
;; markdown-mode
(el-get-bundle markdown-mode)
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

;; auto-complete
(el-get-bundle auto-complete)
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
(el-get-bundle magit)

;; smartparens
(el-get-bundle smartparens)
(require 'smartparens-config)
(smartparens-global-mode t)
