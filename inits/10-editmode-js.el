;; js2-mode
(el-get-bundle js2-mode)

(autoload 'js2-mode "js2-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))

(custom-set-variables
 '(js2-basic-offset 2)  
 '(js2-bounce-indent-p nil))

;; json indent
(setq js-indent-level 2)
