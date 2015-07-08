;; packageの設定
(require 'package)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'load-path "~/.emacs.d/package")
(package-initialize)

;; *.~ とかのバックアップファイルを作らない
(setq make-backup-files nil)
(setq delete-auto-save-files t)
;; .#* とかのバックアップファイルを作らない
(setq auto-save-default nil)

;; GNU Emacs Bufferを非表示
(setq inhibit-startup-screen t)

;; 日本語
(set-language-environment 'Japanese)

;; UTF-8
(set-default-coding-systems 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-buffer-file-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

;; Font
(set-face-attribute 'default nil
		    :family "Ricty")

;; tab幅
(setq default-tab-width 2)

;; 行番号表示
(global-linum-mode t)

;; スクロールバーとツールバー非表示
(tool-bar-mode 0)
(set-scroll-bar-mode nil)

;; Theme
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(setq molokai-theme-kit t)
(load-theme 'molokai t)

;; auto-complete
(require 'auto-complete)
(require 'auto-complete-config)
(ac-config-default)
(global-auto-complete-mode t)

;; markdown-mode
(setq auto-mode-alist
      (cons '("\\.md" . markdown-mode)
	    auto-mode-alist))
;; lua-mode
(autoload 'lua-mode "lua-mode" "Lua editing mode." t)
(add-to-list 'auto-mode-alist '("\\.lua$" . lua-mode))
(add-to-list 'interpreter-mode-alist '("lua" . lua-mode))

;; Prolog
(add-to-list 'auto-mode-alist '("\\.prl$" . prolog-mode))
(add-to-list 'auto-mode-alist '("\\.pro$" . prolog-mode))

;; Clojure-mode
(add-to-list 'auto-mode-alist '("\\.clj$" . clojure-mode))

;; Scala-mode
(add-to-list 'auto-mode-alist '("\\.scala$" . scala-mode))

;; 鬼軍曹.el
(require 'drill-instructor)
(setq drill-instructor-global t)
