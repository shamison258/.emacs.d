;; packageの設定
(require 'package)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'load-path "~/.emacs.d/package")
(package-initialize)

;; *.~ とかのバックアップファイルを作らない
(setq make-backup-files nil)
;; .#* とかのバックアップファイルを作らない
(setq auto-save-default nil)


;; auto-complete
(require 'auto-complete)
(require 'auto-complete-config)
(ac-config-default)
(global-auto-complete-mode t)

;; 鬼軍曹.el
(require 'drill-instructor)
(setq drill-instructor-global t)

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
		    :family "Ricty"
		    :height 180)

;; 行番号表示
(global-linum-mode t)
