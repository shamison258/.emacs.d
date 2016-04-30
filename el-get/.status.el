((auto-complete status "installed" recipe
                (:name auto-complete :website "https://github.com/auto-complete/auto-complete" :description "The most intelligent auto-completion extension." :type github :pkgname "auto-complete/auto-complete" :depends
                       (popup fuzzy)
                       :features auto-complete-config :post-init
                       (progn
                         (add-to-list 'ac-dictionary-directories
                                      (expand-file-name "dict" default-directory))
                         (ac-config-default))))
 (cl-lib status "installed" recipe
         (:name cl-lib :builtin "24.3" :type elpa :description "Properly prefixed CL functions and macros" :url "http://elpa.gnu.org/packages/cl-lib.html"))
 (company-mode status "installed" recipe
               (:name company-mode :website "http://company-mode.github.io/" :description "Modular in-buffer completion framework for Emacs" :type github :pkgname "company-mode/company-mode"))
 (d-mode status "installed" recipe
         (:name d-mode :after nil :description "Digitalmars-D-Mode for emacs" :type http :url "http://www.billbaxter.com/etc/d-mode.el" :prepare
                (progn
                  (autoload 'd-mode "d-mode" "Major mode for editing D code." t)
                  (add-to-list 'auto-mode-alist
                               '("\\.d[i]?$" . d-mode)))))
 (dash status "installed" recipe
       (:name dash :description "A modern list api for Emacs. No 'cl required." :type github :pkgname "magnars/dash.el"))
 (el-get status "installed" recipe
         (:name el-get :website "https://github.com/dimitri/el-get#readme" :description "Manage the external elisp bits and pieces you depend upon." :type github :branch "master" :pkgname "dimitri/el-get" :info "." :compile
                ("el-get.*\\.el$" "methods/")
                :features el-get :post-init
                (when
                    (memq 'el-get
                          (bound-and-true-p package-activated-list))
                  (message "Deleting melpa bootstrap el-get")
                  (unless package--initialized
                    (package-initialize t))
                  (when
                      (package-installed-p 'el-get)
                    (let
                        ((feats
                          (delete-dups
                           (el-get-package-features
                            (el-get-elpa-package-directory 'el-get)))))
                      (el-get-elpa-delete-package 'el-get)
                      (dolist
                          (feat feats)
                        (unload-feature feat t))))
                  (require 'el-get))))
 (ensime status "installed" recipe
         (:name ensime :after nil :depends
                (yasnippet company-mode sbt-mode scala-mode2 auto-complete popup dash s)
                :description "ENhanced Scala Interaction Mode for Emacs" :type github :pkgname "ensime/ensime-emacs" :prepare
                (progn
                  (autoload 'ensime-scala-mode-hook "ensime")
                  (add-hook 'scala-mode-hook 'ensime-scala-mode-hook))))
 (fuzzy status "installed" recipe
        (:name fuzzy :website "https://github.com/auto-complete/fuzzy-el" :description "Fuzzy matching utilities for GNU Emacs" :type github :pkgname "auto-complete/fuzzy-el"))
 (init-loader status "installed" recipe
              (:name init-loader :features
                     (init-loader)
                     :after nil :website "https://github.com/emacs-jp/init-loader" :description "It enables you to categorize your configurations and separate them into multiple files." :type github :pkgname "emacs-jp/init-loader"))
 (js2-mode status "installed" recipe
           (:name js2-mode :after nil :website "https://github.com/mooz/js2-mode#readme" :description "An improved JavaScript editing mode" :type github :pkgname "mooz/js2-mode" :prepare
                  (autoload 'js2-mode "js2-mode" nil t)))
 (markdown-mode status "installed" recipe
                (:name markdown-mode :after nil :description "Major mode to edit Markdown files in Emacs" :website "http://jblevins.org/projects/markdown-mode/" :type github :pkgname "jrblevin/markdown-mode" :prepare
                       (add-to-list 'auto-mode-alist
                                    '("\\.\\(md\\|mdown\\|markdown\\)\\'" . markdown-mode))))
 (molokai-theme status "installed" recipe
                (:name molokai-theme :type git :url "https://github.com/hbin/molokai-theme.git" :after nil))
 (popup status "installed" recipe
        (:name popup :website "https://github.com/auto-complete/popup-el" :description "Visual Popup Interface Library for Emacs" :type github :submodule nil :depends cl-lib :pkgname "auto-complete/popup-el"))
 (rainbow-delimiters status "installed" recipe
                     (:name rainbow-delimiters :features
                            (rainbow-delimiters)
                            :after nil :website "https://github.com/Fanael/rainbow-delimiters#readme" :description "Color nested parentheses, brackets, and braces according to their depth." :type github :pkgname "Fanael/rainbow-delimiters"))
 (s status "installed" recipe
    (:name s :description "The long lost Emacs string manipulation library." :type github :pkgname "magnars/s.el"))
 (sbt-mode status "installed" recipe
           (:name sbt-mode :description "An emacs mode for interacting with scala sbt and projects" :type github :pkgname "hvesalai/sbt-mode"))
 (scala-mode2 status "installed" recipe
              (:name scala-mode2 :after nil :description "A new scala-mode for Emacs 24." :type github :pkgname "hvesalai/scala-mode2"))
 (tuareg-mode status "installed" recipe
              (:name tuareg-mode :after nil :type github :description "an Emacs OCaml mode" :load-path
                     (".")
                     :pkgname "ocaml/tuareg" :prepare
                     (progn
                       (autoload 'tuareg-mode "tuareg" "Major mode for editing Caml code" t)
                       (autoload 'camldebug "camldebug" "Run the Caml debugger" t)
                       (dolist
                           (ext
                            '(".cmo" ".cmx" ".cma" ".cmxa" ".cmi"))
                         (add-to-list 'completion-ignored-extensions ext))
                       (add-to-list 'auto-mode-alist
                                    '("\\.ml[iylp]?" . tuareg-mode)))))
 (web-mode status "installed" recipe
           (:name web-mode :features
                  (web-mode)
                  :after nil :description "emacs major mode for editing PHP/JSP/ASP HTML templates (with embedded CSS and JS blocks)" :type github :pkgname "fxbois/web-mode"))
 (yasnippet status "installed" recipe
            (:name yasnippet :website "https://github.com/capitaomorte/yasnippet.git" :description "YASnippet is a template system for Emacs." :type github :pkgname "capitaomorte/yasnippet" :compile "yasnippet.el" :submodule nil :build
                   (("git" "submodule" "update" "--init" "--" "snippets")))))
