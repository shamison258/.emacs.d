;; file load
(when load-file-name
  (setq user-emacs-directory (file-name-directory load-file-name)))
;; use el-get
(add-to-list 'load-path "~/.emacs.d/el-get/el-get")
;; if dont install, do this
(unless (require 'el-get nil 'noerror)
  (require 'package)
  (add-to-list 'package-archives
	       '("melpa" . "http://melpa.org/packages/"))
  (package-refresh-contents)
  (package-initialize)
  (package-install 'el-get)
  (require 'el-get))
;; set path and sync
(add-to-list 'el-get-recipe-path "~/.emacs.d/el-get/el-get/recipes")
(el-get 'sync)

;; editor setting
;; バックアップファイルを作らない
(setq backup-inhibited t)
(setq make-backup-files nil)
(setq delete-auto-save-files t)
(setq auto-save-default nil)
;; 日本語
(set-language-environment 'Japanese)

;; UTF-8
(set-default-coding-systems 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-buffer-file-coding-system 'utf-8)
(prefer-coding-system 'utf-8)
;;(setq coding-system-for-read 'utf-8)
(setq coding-system-for-write 'utf-8)
;; Font
(set-face-attribute 'default nil
		    :family "Ricty")
(defconst FONT_SIZE 11)
;; tab幅
(setq default-tab-width 2)
;; タブの無効化
(setq-default indent-tabs-mode nil)
;; 行番号表示
(global-linum-mode t)
;; スクロールバー,ツールバー,メニューバー非表示
(tool-bar-mode 0)
(menu-bar-mode 0)
(set-scroll-bar-mode nil)
;; タイトルバーにファイルのフルパス表示
(setq frame-title-format
      (format "%%f - Emacs"))
;; スタートアップをひょうじさせない
(setq inhibit-startup-message t)
;; 警告音を消す
(setq visible-bell t)
(setq ring-bell-function 'ignore)
;; 対応括弧をハイライト
(show-paren-mode t)

;; scheme-mode
(add-hook 'scheme-mode-hook
          '(lambda ()
             ;; goshのエンコをutf-8に
             (setq process-coding-system-alist
                   (cons '("gosh" utf-8 . utf-8)
                         process-coding-system-alist))
             ;; goshをrun-schemeで使う
             (setq scheme-program-name "gosh -i")
             ;; schemeモードとrun-schemeモードにcmuschemeを使用
             (autoload 'scheme-mode
               "cmuscheme" "Major mode for Scheme." t)
             (autoload 'run-scheme
               "cmuscheme" "Run an inferior Scheme process." t)
             (defun scheme-other-window ()
               "Run scheme on other window"
               (interactive)
               (switch-to-buffer-other-window
                (get-buffer-create "*scheme*"))
               (run-scheme scheme-program-name))
             (define-key global-map
               "\C-cs" 'scheme-other-window)))

;; el-get

;; scala-mode2
(el-get-bundle! scala-mode2)
;; scaladoc-style を採用
(setq scala-indent:use-scaladoc-style t)
;; ensime
(el-get-bundle! ensime)
(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)
(setq ensime-completion-style 'auto-complete)

;; markdown-mode
(el-get-bundle markdown-mode)
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

;; auto-complete
(el-get-bundle! auto-complete)
(ac-config-default)
(global-auto-complete-mode t)

;; yasnippet
;;(el-get-bundle! yasnippet)
;;(yas-global-mode 1)

;; 鬼軍曹
(el-get-bundle emacs-drill-instructor
  :type git
  :url "https://github.com/k1LoW/emacs-drill-instructor.git")
(require 'drill-instructor)
(setq drill-instructor-global t)

;; magit
(el-get-bundle! magit)

;; smartparens
(el-get-bundle! smartparens)
(require 'smartparens-config)
(smartparens-global-mode t)

;; rainbow-delimiters
(el-get-bundle! rainbow-delimiters)
(add-hook 'emacs-lisp-mode-hook 'rainbow-delimiters-mode)
(add-hook 'scheme-mode-hook 'rainbow-delimiters-mode)
(add-hook 'lisp-mode-hook 'rainbow-delimiters-mode)
(add-hook 'clojure-mode-hook 'rainbow-delimiters-mode)
;; 括弧の色を強調する設定
(require 'cl-lib)
(require 'color)
(defun rainbow-delimiters-using-stronger-colors ()
  (interactive)
  (cl-loop
   for index from 1 to rainbow-delimiters-max-face-count
   do
   (let ((face (intern (format "rainbow-delimiters-depth-%d-face" index))))
		 (cl-callf color-saturate-name (face-foreground face) 30))))
(add-hook 'emacs-startup-hook 'rainbow-delimiters-using-stronger-colors)

;; helm
(el-get-bundle! helm)
(helm-mode 1)
(define-key helm-map (kbd "C-h") 'delete-backward-char)
(define-key helm-find-files-map (kbd "C-h") 'delete-backward-char)
(define-key helm-find-files-map (kbd "TAB") 'helm-execute-persistent-action)
(define-key helm-read-file-map (kbd "TAB") 'helm-execute-persistent-action)
;; minibufferでC-kをいい感じに使う設定
(setq helm-delete-minibuffer-contents-from-point t)
(defadvice helm-delete-minibuffer-contents
    (before helm-emulate-kill-line activate)
  "Emulate `kill-line' in helm minibuffer"
  (kill-new (buffer-substring (point) (field-end))))
;; ファイルが存在しない場合は何もしないように advice を定義
(defadvice helm-ff-kill-or-find-buffer-fname
    (around execute-only-if-exist activate)
  "Execute command only if CANDIDATE exists"
  (when (file-exists-p candidate)
    ad-do-it))
;; 候補のフィルタリングをいい感じにする設定
(defadvice helm-ff-transform-fname-for-completion
    (around my-transform activate)
  "Transform the pattern to reflect my intention"
  (let* ((pattern (ad-get-arg 0))
         (input-pattern (file-name-nondirectory pattern))
         (dirname (file-name-directory pattern)))
    (setq input-pattern
          (replace-regexp-in-string "\\." "\\\\." input-pattern))
    (setq ad-return-value
          (concat dirname
                  (if (string-match "^\\^" input-pattern)
                      (substring input-pattern 1)
                    (concat ".*" input-pattern))))))

;; Theme load
(if window-system
    (progn
      ;; molokai color theme
      (el-get-bundle molokai-theme
        :type git
        :url "https://github.com/hbin/molokai-theme.git")
      (require 'molokai-theme)
      (setq molokai-theme-kit t)
      (load-theme 'molokai t)))
