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
(init-loader-load (locate-user-emacs-file "inits"))
