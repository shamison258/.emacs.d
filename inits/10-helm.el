;; helm
(el-get-bundle helm)
(helm-mode 1)

;; 各種Modeをhelmと連携
(define-key global-map (kbd "M-x")     'helm-M-x)
(define-key global-map (kbd "C-x C-f") 'helm-find-files)
(define-key global-map (kbd "C-x C-r") 'helm-recentf)
(define-key global-map (kbd "M-y")     'helm-show-kill-ring)
(define-key global-map (kbd "C-c i")   'helm-imenu)
(define-key global-map (kbd "C-x b")   'helm-buffers-list)
(define-key helm-map (kbd "C-h") 'delete-backward-char)
(define-key helm-find-files-map (kbd "C-h") 'delete-backward-char)
(define-key helm-find-files-map (kbd "C-i") 'helm-execute-persistent-action)
(define-key helm-read-file-map (kbd "C-i") 'helm-execute-persistent-action)

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
