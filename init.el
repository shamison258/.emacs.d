<<<<<<< HEAD
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
=======
;; packageの設定
(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'load-path "~/.emacs.d/package")
(add-to-list 'load-path "~/.emacs.d/package/yatex")
(add-to-list 'load-path "~/.emacs.d/package/hatena-blog")
(package-initialize)


;; --- エディタの設定 ---

>>>>>>> origin/master
;; バックアップファイルを作らない
(setq backup-inhibited t)
(setq make-backup-files nil)
(setq delete-auto-save-files t)
(setq auto-save-default nil)
<<<<<<< HEAD
;; 日本語
(set-language-environment 'Japanese)
=======

;; 日本語
(set-language-environment 'Japanese)

>>>>>>> origin/master
;; UTF-8
(set-default-coding-systems 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-buffer-file-coding-system 'utf-8)
(prefer-coding-system 'utf-8)
;;(setq coding-system-for-read 'utf-8)
(setq coding-system-for-write 'utf-8)
<<<<<<< HEAD
=======

>>>>>>> origin/master
;; Font
(set-face-attribute 'default nil
		    :family "Ricty")
(defconst FONT_SIZE 11)
<<<<<<< HEAD
=======

>>>>>>> origin/master
;; tab幅
(setq default-tab-width 2)
;; タブの無効化
(setq-default indent-tabs-mode nil)
<<<<<<< HEAD
;; 行番号表示
(global-linum-mode t)
=======

;; 行番号表示
(global-linum-mode t)
;;;;
>>>>>>> origin/master
;; スクロールバー,ツールバー,メニューバー非表示
(tool-bar-mode 0)
(menu-bar-mode 0)
(set-scroll-bar-mode nil)
<<<<<<< HEAD
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


=======

;; タイトルバーにファイルのフルパス表示
(setq frame-title-format
      (format "%%f - Emacs"))

;; スタートアップをひょうじさせない
(setq inhibit-startup-message t)

;; 警告音を消す
(setq visible-bell t)
(setq ring-bell-function 'ignore)


;; --- プラグインの設定 ---


;; auto-complete
(require 'auto-complete)
(require 'auto-complete-config)
(ac-config-default)
(global-auto-complete-mode t)

>>>>>>> origin/master
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

<<<<<<< HEAD
;; el-get

;; scala-mode2
(el-get-bundle! scala-mode2)
;; javadoc-style を採用
(setq scala-indent:use-scaladoc-style t)
;; ensime
(el-get-bundle! ensime)
(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)

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
(el-get-bundle! emacs-drill-instructor
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
=======

;; markdown-mode
(setq auto-mode-alist
      (cons '("\\.md" . markdown-mode)
	    auto-mode-alist))

;; Prolog
(add-to-list 'auto-mode-alist '("\\.prl$" . prolog-mode))
(add-to-list 'auto-mode-alist '("\\.pro$" . prolog-mode))

;; Scala-mode
(add-to-list 'auto-mode-alist '("\\.scala$" . scala-mode))
;; Ensime
(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)

;; 拡張子が .tex なら yatex-mode に
(setq auto-mode-alist
      (cons (cons "\\.tex$" 'yatex-mode) auto-mode-alist))
(autoload 'yatex-mode "yatex" "Yet Another LaTeX mode" t)

;; twittering-mode-設定
(setq twittering-timer-interval 60) ; 1分毎に自動更新


;; Clojure-mode
(add-hook 'clojure-mode-hook
          '(lambda ()
             ;; Ciderの設定
             'cider-mode
             ;; mini bufferに関数の引数を表示させる
             'cider-turn-on-eldoc-mode
             ;; 'C-x b' した時に *nrepl-connection*
             ;; と *nrepl-server* のbufferを一覧に表示しない
             (setq nrepl-hide-special-buffers t)
             ;; RELPのbuffer名を 'project名:nREPLのport番号' と表示する
             ;; project名は project.clj で defproject した名前
             (setq nrepl-buffer-name-show-port t)
             ;; C-c C-zでcider-replを出す
             (setq cider-repl-display-in-current-window t)
             ;; prompt
             (setq cider-repl-prompt-abbreviated t)
             ;; history file path
             (setq cider-repl-history-file "~/.emacs.d/cider-history")
             (setq cider-repl-use-pretty-printing t)

             ;; ac-ciderの設定
             (autoload 'ac-cider "ac-cider" nil t)
             (add-hook 'cider-mode-hook 'ac-flyspell-workaround)
             (add-hook 'cider-mode-hook 'ac-cider-setup)
             (add-hook 'cider-repl-mode-hook 'ac-cider-setup)
             (eval-after-load "auto-complete"
               '(progn
                  (add-to-list 'ac-modes 'cider-mode)
                  (add-to-list 'ac-modes 'cider-repl-mode)))))

;; 鬼軍曹.el
(require 'drill-instructor)
(setq drill-instructor-global t)

;; smartparens
(require 'smartparens-config)
(smartparens-global-mode t)
;; 対応括弧をハイライト
(show-paren-mode t)

;; rainbow-delimiters 
(require 'rainbow-delimiters)
>>>>>>> origin/master
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
<<<<<<< HEAD
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

=======
;; http://d.hatena.ne.jp/a_bicky/20140104/1388822688
(when (require 'helm-config nil t)
  (helm-mode 1)
  ;; 各種Modeをhelmと連携
  (define-key global-map (kbd "M-x")     'helm-M-x)
  (define-key global-map (kbd "C-x C-f") 'helm-find-files)
  (define-key global-map (kbd "C-x C-r") 'helm-recentf)
  (define-key global-map (kbd "M-y")     'helm-show-kill-ring)
  (define-key global-map (kbd "C-c i")   'helm-imenu)
  (define-key global-map (kbd "C-x b")   'helm-buffers-list)
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
                      (concat ".*" input-pattern)))))))
>>>>>>> origin/master

;; Theme load
(if window-system
    (progn
<<<<<<< HEAD
      ;; molokai color theme
      (el-get-bundle molokai-theme
        :type git
        :url "https://github.com/hbin/molokai-theme.git")
      (require 'molokai-theme)
      (setq molokai-theme-kit t)
      (load-theme 'molokai t)))

=======
      (add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
      (setq molokai-theme-kit t)
      (load-theme 'molokai t)))

;; hatena-blog
(require 'hatena-blog)
>>>>>>> origin/master
