;; d-mode
(el-get-bundle d-mode)

;; js2-mode
(el-get-bundle js2-mode)
(autoload 'js2-mode "js2-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))
(custom-set-variables
 '(js2-basic-offset 2)  
 '(js2-bounce-indent-p nil))
;; json indent
(setq js-indent-level 2)

;; scala-mode2
(el-get-bundle scala-mode2)
;; scaladoc-style を採用
(setq scala-indent:use-scaladoc-style t)
;; ensime
(el-get-bundle ensime)
;; http://blog.shibayu36.org/entry/2015/07/07/103000
(defun scala/enable-eldoc ()
  "Show error message or type name at point by Eldoc."
  (setq-local eldoc-documentation-function
              #'(lambda ()
                  (when (ensime-connected-p)
                    (let ((err (ensime-print-errors-at-point)))
                      (or (and err (not (string= err "")) err)
                          (ensime-print-type-at-point))))))
  (eldoc-mode +1))
(defun scala/completing-dot-company ()
  (cond (company-backend
         (company-complete-selection)
         (scala/completing-dot))
        (t
         (insert ".")
         (company-complete))))
(defun scala/completing-dot-ac ()
  (insert ".")
  (ac-trigger-key-command t))
;; Interactive commands
(defun scala/completing-dot ()
  "Insert a period and show company completions."
  (interactive "*")
  (eval-and-compile (require 'ensime))
  (eval-and-compile (require 's))
  (when (s-matches? (rx (+ (not space)))
                    (buffer-substring (line-beginning-position) (point)))
    (delete-horizontal-space t))
  (cond ((not (and (ensime-connected-p) ensime-completion-style))
         (insert "."))
        ((eq ensime-completion-style 'company)
         (scala/completing-dot-company))
        ((eq ensime-completion-style 'auto-complete)
         (scala/completing-dot-ac))))
;; Initialization
(add-hook 'ensime-mode-hook #'scala/enable-eldoc)
(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)

;; scheme-mode
(add-hook
 'scheme-mode-hook
 '(lambda ()
    ;; goshのエンコをutf-8に
    (setq process-coding-system-alist
          (cons '("gosh" utf-8 . utf-8) process-coding-system-alist))
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
