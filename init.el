;; file load
(when load-file-name
  (setq user-emacs-directory (file-name-directory load-file-name)))

;; use el-get
(add-to-list 'load-path "~/.emacs.d/el-get/el-get")
;; if dont install, do this
(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.githubusercontent.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

;; set path and sync
(add-to-list 'el-get-recipe-path "~/.emacs.d/el-get/el-get/recipes")
(add-to-list 'el-get-recipe-path "~/.emacs.d/el-get-user/recipes")
(el-get 'sync)

(el-get-bundle! init-loader)
(setq init-loader-show-log-after-init nil)
(init-loader-load (locate-user-emacs-file "inits"))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(js2-basic-offset 2))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
