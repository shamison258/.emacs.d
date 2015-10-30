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

(el-get-bundle! init-loader)
(init-loader-load (locate-user-emacs-file "inits"))
