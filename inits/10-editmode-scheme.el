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
