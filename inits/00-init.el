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
;; C-hをBackspaceに
(define-key key-translation-map (kbd "C-h") (kbd "<DEL>"))

;; 検索(全般)時には大文字小文字の区別をしない
(setq case-fold-search t) 
;; インクリメンタルサーチ時には大文字小文字の区別をしない
(setq isearch-case-fold-search t)
;; バッファー名の問い合わせで大文字小文字の区別をしない
(setq read-buffer-completion-ignore-case t)
;; ファイル名の問い合わせで大文字小文字の区別をしない
(setq read-file-name-completion-ignore-case t)
