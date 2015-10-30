((auto-complete status "installed" recipe
                (:name auto-complete :features
                       (auto-complete-config auto-complete)
                       :after nil :website "https://github.com/auto-complete/auto-complete" :description "The most intelligent auto-completion extension." :type github :pkgname "auto-complete/auto-complete" :depends
                       (popup fuzzy)
                       :post-init
                       (progn
                         (add-to-list 'ac-dictionary-directories
                                      (expand-file-name "dict" default-directory))
                         (ac-config-default))))
 (cl-lib status "installed" recipe
         (:name cl-lib :builtin "24.3" :type elpa :description "Properly prefixed CL functions and macros" :url "http://elpa.gnu.org/packages/cl-lib.html"))
 (company-mode status "installed" recipe
               (:name company-mode :website "http://company-mode.github.io/" :description "Modular in-buffer completion framework for Emacs" :type github :pkgname "company-mode/company-mode"))
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
 (emacs-drill-instructor status "installed" recipe
                         (:name emacs-drill-instructor :type git :url "https://github.com/k1LoW/emacs-drill-instructor.git" :after nil))
 (ensime status "installed" recipe
         (:name ensime :features
                (ensime)
                :after nil :description "ENhanced Scala Interaction Mode for Emacs" :type github :pkgname "ensime/ensime-emacs" :depends
                (s dash popup auto-complete scala-mode2 sbt-mode company-mode yasnippet)
                :prepare
                (progn
                  (autoload 'ensime-scala-mode-hook "ensime")
                  (add-hook 'scala-mode-hook 'ensime-scala-mode-hook))))
 (fuzzy status "installed" recipe
        (:name fuzzy :website "https://github.com/auto-complete/fuzzy-el" :description "Fuzzy matching utilities for GNU Emacs" :type github :pkgname "auto-complete/fuzzy-el"))
 (helm status "installed" recipe
       (:name helm :features
              (helm)
              :after nil :description "Emacs incremental and narrowing framework" :type github :pkgname "emacs-helm/helm" :autoloads "helm-autoloads" :build
              (("make"))
              :build/darwin
              `(("make" ,(format "EMACS_COMMAND=%s" el-get-emacs)))
              :build/windows-nt
              (let
                  ((generated-autoload-file
                    (expand-file-name "helm-autoloads.el"))
                   \
                   (backup-inhibited t))
              (update-directory-autoloads default-directory)
              nil)))
(init-loader status "installed" recipe
(:name init-loader :features
(init-loader)
:after nil :website "https://github.com/emacs-jp/init-loader" :description "It enables you to categorize your configurations and separate them into multiple files." :type github :pkgname "emacs-jp/init-loader"))
(magit status "installed" recipe
(:name magit :features
(magit)
:after nil :website "https://github.com/magit/magit#readme" :description "It's Magit! An Emacs mode for Git." :type github :pkgname "magit/magit" :branch "master" :minimum-emacs-version "24.4" :depends
(dash)
:provide
(with-editor)
:info "Documentation" :load-path "lisp/" :compile "lisp/" :build
`(("make" ,(format "EMACSBIN=%s" el-get-emacs)
"docs")
("touch" "lisp/magit-autoloads.el"))
:build/berkeley-unix
`(("gmake" ,(format "EMACSBIN=%s" el-get-emacs)
"docs")
("touch" "lisp/magit-autoloads.el"))
:build/windows-nt
(with-temp-file "lisp/magit-autoloads.el" nil)))
(markdown-mode status "installed" recipe
(:name markdown-mode :after nil :description "Major mode to edit Markdown files in Emacs" :website "http://jblevins.org/projects/markdown-mode/" :type git :url "git://jblevins.org/git/markdown-mode.git" :prepare
(add-to-list 'auto-mode-alist
'("\\.\\(md\\|mdown\\|markdown\\)\\'" . markdown-mode))))
(molokai-theme status "installed" recipe
(:name molokai-theme :website "https://github.com/hbin/molokai-theme.git" :description "THEME" :type github :pkgname "hbin/molokai-theme"))
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
(:name scala-mode2 :features
(scala-mode2)
:after nil :description "A new scala-mode for Emacs 24." :type github :pkgname "hvesalai/scala-mode2"))
(smartparens status "installed" recipe
(:name smartparens :features
(smartparens)
:after nil :description "Autoinsert pairs of defined brackets and wrap regions" :type github :pkgname "Fuco1/smartparens" :depends dash))
(yasnippet status "installed" recipe
(:name yasnippet :website "https://github.com/capitaomorte/yasnippet.git" :description "YASnippet is a template system for Emacs." :type github :pkgname "capitaomorte/yasnippet" :compile "yasnippet.el" :submodule nil :build
(("git" "submodule" "update" "--init" "--" "snippets")))))
