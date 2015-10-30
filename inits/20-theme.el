;; Theme load
(if window-system
    (progn
      ;; molokai color theme
      (el-get-bundle molokai-theme
        :type git
        :url "https://github.com/hbin/molokai-theme.git")
      (require 'molokai-theme)
      (setq molokai-theme-kit t)
      (load-theme 'molokai t)))
