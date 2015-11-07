;; helm
(el-get-bundle! helm)
(helm-mode 1)
(define-key helm-map (kbd "C-h") 'delete-backward-char)
(define-key helm-find-files-map (kbd "C-h") 'delete-backward-char)
(define-key helm-find-files-map (kbd "TAB") 'helm-execute-persistent-action)
(define-key helm-read-file-map (kbd "TAB") 'helm-execute-persistent-action)

;; minibufferでC-kをいい感じに使う設定
(setq helm-delete-minibuffer-contents-from-point t)
(defadvice helm-delete-minibuffer-contents
    (before helm-emulate-kill-line activate)
  "Emulate `kill-line' in helm minibuffer"
  (kill-new (buffer-substring (point) (field-end))))

;; ファイルが存在しない場合は何もしないように advice を定義
(defadvice helm-ff-kill-or-find-buffer-fname
    (around execute-only-if-exist activate)
  "Execute command only if CANDIDATE exists"
  (when (file-exists-p candidate)
    ad-do-it))

;; 候補のフィルタリングをいい感じにする設定
(defadvice helm-ff-transform-fname-for-completion
    (around my-transform activate)
  "Transform the pattern to reflect my intention"
  (let* ((pattern (ad-get-arg 0))
         (input-pattern (file-name-nondirectory pattern))
         (dirname (file-name-directory pattern)))
    (setq input-pattern
          (replace-regexp-in-string "\\." "\\\\." input-pattern))
    (setq ad-return-value
          (concat dirname
                  (if (string-match "^\\^" input-pattern)
                      (substring input-pattern 1)
                    (concat ".*" input-pattern))))))
