;; markdown-mode
(el-get-bundle markdown-mode)
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

(require 'company)
(setq company-idle-delay 0) ; デフォルトは0.5
(setq company-minimum-prefix-length 2) ; デフォルトは4
(setq company-selection-wrap-around t) ; 候補の一番下でさらに下に行こうとすると一番上に戻る

(define-key company-active-map (kbd "M-n") nil)
(define-key company-active-map (kbd "M-p") nil)
(define-key company-active-map (kbd "C-n") 'company-select-next)
(define-key company-active-map (kbd "C-p") 'company-select-previous)
(define-key company-active-map (kbd "C-h") nil)

;; yasnippet
(el-get-bundle! yasnippet)
(yas-global-mode 1)

;; yatex
(el-get-bundle yatex)
(autoload 'yatex-mode "yatex" "Yet Another LaTeX mode" t)
(setq auto-mode-alist
      (append '(("\\.tex$" . yatex-mode)
                ("\\.ltx$" . yatex-mode)
                ("\\.cls$" . yatex-mode)
                ("\\.sty$" . yatex-mode)
                ("\\.clo$" . yatex-mode)
                ("\\.bbl$" . yatex-mode)) auto-mode-alist))

;; 鬼軍曹
(el-get-bundle emacs-drill-instructor
  :type git
  :url "https://github.com/k1LoW/emacs-drill-instructor.git")
(require 'drill-instructor)
(setq drill-instructor-global t)

;; smartparens
(el-get-bundle smartparens)
(require 'smartparens-config)
(smartparens-global-mode t)

(el-get-bundle web-mode)
(add-to-list 'auto-mode-alist '("\\.scala\\.html$" . web-mode))

(setq web-mode-markup-indent-offset 2)
(add-hook 'web-mode-hook 'web-mode-hook)

