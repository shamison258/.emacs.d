;;; .loaddefs.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads nil "auto-complete/auto-complete" "auto-complete/auto-complete.el"
;;;;;;  (22245 60549 326907 180000))
;;; Generated autoloads from auto-complete/auto-complete.el

(autoload 'auto-complete "auto-complete/auto-complete" "\
Start auto-completion at current point.

\(fn &optional SOURCES)" t nil)

(autoload 'auto-complete-mode "auto-complete/auto-complete" "\
AutoComplete mode

\(fn &optional ARG)" t nil)

(defvar global-auto-complete-mode nil "\
Non-nil if Global-Auto-Complete mode is enabled.
See the command `global-auto-complete-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-auto-complete-mode'.")

(custom-autoload 'global-auto-complete-mode "auto-complete/auto-complete" nil)

(autoload 'global-auto-complete-mode "auto-complete/auto-complete" "\
Toggle Auto-Complete mode in all buffers.
With prefix ARG, enable Global-Auto-Complete mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Auto-Complete mode is enabled in all buffers where
`auto-complete-mode-maybe' would do it.
See `auto-complete-mode' for more information on Auto-Complete mode.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil "auto-complete/auto-complete-config" "auto-complete/auto-complete-config.el"
;;;;;;  (22245 60549 323573 847000))
;;; Generated autoloads from auto-complete/auto-complete-config.el

(autoload 'ac-config-default "auto-complete/auto-complete-config" "\


\(fn)" nil nil)

;;;***

;;;### (autoloads nil "company-mode/company" "company-mode/company.el"
;;;;;;  (22245 60553 950240 685000))
;;; Generated autoloads from company-mode/company.el

(autoload 'company-mode "company-mode/company" "\
\"complete anything\"; is an in-buffer completion framework.
Completion starts automatically, depending on the values
`company-idle-delay' and `company-minimum-prefix-length'.

Completion can be controlled with the commands:
`company-complete-common', `company-complete-selection', `company-complete',
`company-select-next', `company-select-previous'.  If these commands are
called before `company-idle-delay', completion will also start.

Completions can be searched with `company-search-candidates' or
`company-filter-candidates'.  These can be used while completion is
inactive, as well.

The completion data is retrieved using `company-backends' and displayed
using `company-frontends'.  If you want to start a specific backend, call
it interactively or use `company-begin-backend'.

By default, the completions list is sorted alphabetically, unless the
backend chooses otherwise, or `company-transformers' changes it later.

regular keymap (`company-mode-map'):

\\{company-mode-map}
keymap during active completions (`company-active-map'):

\\{company-active-map}

\(fn &optional ARG)" t nil)

(defvar global-company-mode nil "\
Non-nil if Global-Company mode is enabled.
See the command `global-company-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-company-mode'.")

(custom-autoload 'global-company-mode "company-mode/company" nil)

(autoload 'global-company-mode "company-mode/company" "\
Toggle Company mode in all buffers.
With prefix ARG, enable Global-Company mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Company mode is enabled in all buffers where
`company-mode-on' would do it.
See `company-mode' for more information on Company mode.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil "company-mode/company-abbrev" "company-mode/company-abbrev.el"
;;;;;;  (22245 60553 943574 18000))
;;; Generated autoloads from company-mode/company-abbrev.el

(autoload 'company-abbrev "company-mode/company-abbrev" "\
`company-mode' completion backend for abbrev.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;***

;;;### (autoloads nil "company-mode/company-bbdb" "company-mode/company-bbdb.el"
;;;;;;  (22245 60553 943574 18000))
;;; Generated autoloads from company-mode/company-bbdb.el

(autoload 'company-bbdb "company-mode/company-bbdb" "\
`company-mode' completion backend for BBDB.

\(fn COMMAND &optional ARG &rest IGNORE)" t nil)

;;;***

;;;### (autoloads nil "company-mode/company-css" "company-mode/company-css.el"
;;;;;;  (22245 60553 943574 18000))
;;; Generated autoloads from company-mode/company-css.el

(autoload 'company-css "company-mode/company-css" "\
`company-mode' completion backend for `css-mode'.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;***

;;;### (autoloads nil "company-mode/company-dabbrev" "company-mode/company-dabbrev.el"
;;;;;;  (22245 60553 946907 352000))
;;; Generated autoloads from company-mode/company-dabbrev.el

(autoload 'company-dabbrev "company-mode/company-dabbrev" "\
dabbrev-like `company-mode' completion backend.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;***

;;;### (autoloads nil "company-mode/company-dabbrev-code" "company-mode/company-dabbrev-code.el"
;;;;;;  (22245 60553 943574 18000))
;;; Generated autoloads from company-mode/company-dabbrev-code.el

(autoload 'company-dabbrev-code "company-mode/company-dabbrev-code" "\
dabbrev-like `company-mode' backend for code.
The backend looks for all symbols in the current buffer that aren't in
comments or strings.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;***

;;;### (autoloads nil "company-mode/company-elisp" "company-mode/company-elisp.el"
;;;;;;  (22245 60553 946907 352000))
;;; Generated autoloads from company-mode/company-elisp.el

(autoload 'company-elisp "company-mode/company-elisp" "\
`company-mode' completion backend for Emacs Lisp.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;***

;;;### (autoloads nil "company-mode/company-etags" "company-mode/company-etags.el"
;;;;;;  (22245 60553 946907 352000))
;;; Generated autoloads from company-mode/company-etags.el

(autoload 'company-etags "company-mode/company-etags" "\
`company-mode' completion backend for etags.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;***

;;;### (autoloads nil "company-mode/company-files" "company-mode/company-files.el"
;;;;;;  (22245 60553 946907 352000))
;;; Generated autoloads from company-mode/company-files.el

(autoload 'company-files "company-mode/company-files" "\
`company-mode' completion backend existing file names.
Completions works for proper absolute and relative files paths.
File paths with spaces are only supported inside strings.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;***

;;;### (autoloads nil "company-mode/company-gtags" "company-mode/company-gtags.el"
;;;;;;  (22245 60553 946907 352000))
;;; Generated autoloads from company-mode/company-gtags.el

(autoload 'company-gtags "company-mode/company-gtags" "\
`company-mode' completion backend for GNU Global.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;***

;;;### (autoloads nil "company-mode/company-ispell" "company-mode/company-ispell.el"
;;;;;;  (22245 60553 946907 352000))
;;; Generated autoloads from company-mode/company-ispell.el

(autoload 'company-ispell "company-mode/company-ispell" "\
`company-mode' completion backend using Ispell.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;***

;;;### (autoloads nil "company-mode/company-keywords" "company-mode/company-keywords.el"
;;;;;;  (22245 60553 946907 352000))
;;; Generated autoloads from company-mode/company-keywords.el

(autoload 'company-keywords "company-mode/company-keywords" "\
`company-mode' backend for programming language keywords.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;***

;;;### (autoloads nil "company-mode/company-nxml" "company-mode/company-nxml.el"
;;;;;;  (22245 60553 946907 352000))
;;; Generated autoloads from company-mode/company-nxml.el

(autoload 'company-nxml "company-mode/company-nxml" "\
`company-mode' completion backend for `nxml-mode'.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;***

;;;### (autoloads nil "company-mode/company-oddmuse" "company-mode/company-oddmuse.el"
;;;;;;  (22245 60553 946907 352000))
;;; Generated autoloads from company-mode/company-oddmuse.el

(autoload 'company-oddmuse "company-mode/company-oddmuse" "\
`company-mode' completion backend for `oddmuse-mode'.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;***

;;;### (autoloads nil "company-mode/company-semantic" "company-mode/company-semantic.el"
;;;;;;  (22245 60553 946907 352000))
;;; Generated autoloads from company-mode/company-semantic.el

(autoload 'company-semantic "company-mode/company-semantic" "\
`company-mode' completion backend using CEDET Semantic.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;***

;;;### (autoloads nil "company-mode/company-tempo" "company-mode/company-tempo.el"
;;;;;;  (22245 60553 950240 685000))
;;; Generated autoloads from company-mode/company-tempo.el

(autoload 'company-tempo "company-mode/company-tempo" "\
`company-mode' completion backend for tempo.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;***

;;;### (autoloads nil "company-mode/company-xcode" "company-mode/company-xcode.el"
;;;;;;  (22245 60553 950240 685000))
;;; Generated autoloads from company-mode/company-xcode.el

(autoload 'company-xcode "company-mode/company-xcode" "\
`company-mode' completion backend for Xcode projects.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;***

;;;### (autoloads nil "company-mode/company-yasnippet" "company-mode/company-yasnippet.el"
;;;;;;  (22245 60553 950240 685000))
;;; Generated autoloads from company-mode/company-yasnippet.el

(autoload 'company-yasnippet "company-mode/company-yasnippet" "\
`company-mode' backend for `yasnippet'.

This backend should be used with care, because as long as there are
snippets defined for the current major mode, this backend will always
shadow backends that come after it.  Recommended usages:

* In a buffer-local value of `company-backends', grouped with a backend or
  several that provide actual text completions.

  (add-hook 'js-mode-hook
            (lambda ()
              (set (make-local-variable 'company-backends)
                   '((company-dabbrev-code company-yasnippet)))))

* After keyword `:with', grouped with other backends.

  (push '(company-semantic :with company-yasnippet) company-backends)

* Not in `company-backends', just bound to a key.

  (global-set-key (kbd \"C-c y\") 'company-yasnippet)

\(fn COMMAND &optional ARG &rest IGNORE)" t nil)

;;;***

;;;### (autoloads nil "d-mode/d-mode" "d-mode/d-mode.el" (22245 60556
;;;;;;  996907 465000))
;;; Generated autoloads from d-mode/d-mode.el
 (add-to-list 'auto-mode-alist '("\\.d[i]?\\'" . d-mode))

(autoload 'd-mode "d-mode/d-mode" "\
Major mode for editing code written in the D Programming Language.
See http://www.digitalmars.com/d for more information about the D language.
The hook `c-mode-common-hook' is run with no args at mode
initialization, then `d-mode-hook'.

Key bindings:
\\{d-mode-map}

\(fn)" t nil)

;;;***

;;;### (autoloads nil "el-get/el-get" "el-get/el-get.el" (22245 60437
;;;;;;  590236 377000))
;;; Generated autoloads from el-get/el-get.el

(autoload 'el-get-version "el-get/el-get" "\
Message the current el-get version

\(fn)" t nil)

(autoload 'el-get-install "el-get/el-get" "\
Cause the named PACKAGE to be installed after all of its
dependencies (if any).

PACKAGE may be either a string or the corresponding symbol.

\(fn PACKAGE)" t nil)

(autoload 'el-get-update "el-get/el-get" "\
Update PACKAGE.

\(fn PACKAGE)" t nil)

(autoload 'el-get-update-all "el-get/el-get" "\
Performs update of all installed packages.

\(fn &optional NO-PROMPT)" t nil)

(autoload 'el-get-update-packages-of-type "el-get/el-get" "\
Update all installed packages of type TYPE.

\(fn TYPE)" t nil)

(autoload 'el-get-self-update "el-get/el-get" "\
Update el-get itself.  The standard recipe takes care of reloading the code.

\(fn)" t nil)

(autoload 'el-get-remove "el-get/el-get" "\
Remove any PACKAGE that is know to be installed or required.

\(fn PACKAGE)" t nil)

(autoload 'el-get-reinstall "el-get/el-get" "\
Remove PACKAGE and then install it again.

\(fn PACKAGE)" t nil)

(autoload 'el-get-cd "el-get/el-get" "\
Open dired in the package directory.

\(fn PACKAGE)" t nil)

(autoload 'el-get-make-recipes "el-get/el-get" "\
Loop over `el-get-sources' and write a recipe file for each
entry which is not a symbol and is not already a known recipe.

\(fn &optional DIR)" t nil)

(autoload 'el-get-checksum "el-get/el-get" "\
Compute the checksum of the given package, and put it in the kill-ring

\(fn PACKAGE)" t nil)

(autoload 'el-get-self-checksum "el-get/el-get" "\
Compute the checksum of the running version of el-get itself.

Also put the checksum in the kill-ring.

\(fn)" t nil)

(autoload 'el-get "el-get/el-get" "\
Ensure that packages have been downloaded once and init them as needed.

This will not update the sources by using `apt-get install' or
`git pull', but it will ensure that:

* the packages have been installed
* load-path is set so their elisp files can be found
* Info-directory-list is set so their info files can be found
* Autoloads have been prepared and evaluated for each package
* Any post-installation setup (e.g. `(require 'feature)') happens

When SYNC is nil (the default), all installations run
concurrently, in the background.

When SYNC is 'sync, each package will be installed synchronously,
and any error will stop it all.

Please note that the `el-get-init' part of `el-get' is always
done synchronously. There's `byte-compile' support though, and
the packages you use are welcome to use `autoload' too.

PACKAGES is expected to be a list of packages you want to install
or init.  When PACKAGES is omited (the default), the list of
already installed packages is considered.

\(fn &optional SYNC &rest PACKAGES)" nil nil)

;;;***

;;;### (autoloads nil "el-get/el-get-bundle" "el-get/el-get-bundle.el"
;;;;;;  (22245 60437 586903 44000))
;;; Generated autoloads from el-get/el-get-bundle.el

(autoload 'el-get-bundle-el-get "el-get/el-get-bundle" "\


\(fn SRC)" nil nil)

(autoload 'el-get-bundle "el-get/el-get-bundle" "\
Install PACKAGE and run initialization FORM.

PACKAGE can be either a simple package name or a package name
with a modifier before the name to specify local recipe source
information:

* `<owner>/' : specifies a Github owner name
* `gist:<id>' : specifies a Gist ID
* `<type>:' : specifies a type of the package source

If `FEATURE in PACKAGE' form is used instead of PACKAGE, then
that FEATURE is `require'd after installing PACKAGE.  You can
also use `el-get-bundle!' macro if FEATURE and PACKAGE are the
same.  If you wish to `require' more than one feature, then use
`:features' property in FORM.

The initialization FORM may start with a property list that
describes a local recipe.  The FORM after the property list is
treated as initialization code, which is actually an `:after'
property of the local recipe.

A copy of the initialization code is stored in a directory
specified by `el-get-bundle-init-directory' and its byte-compiled
version is used if `el-get-bundle-byte-compile' is non-nil.

\(fn PACKAGE &rest FORM)" nil t)

(put 'el-get-bundle 'lisp-indent-function 'defun)

(autoload 'el-get-bundle! "el-get/el-get-bundle" "\
Install PACKAGE and run initialization form.
It is the same as `el-get-bundle' except that PACKAGE is explicitly
required.

\(fn PACKAGE &rest ARGS)" nil t)

(put 'el-get-bundle! 'lisp-indent-function 'defun)

;;;***

;;;### (autoloads nil "el-get/el-get-check" "el-get/el-get-check.el"
;;;;;;  (22245 60437 586903 44000))
;;; Generated autoloads from el-get/el-get-check.el

(autoload 'el-get-check-recipe "el-get/el-get-check" "\
Check the format of the recipe.
Please run this command before sending a pull request.
Usage: M-x el-get-check-recipe RET

You can run this function from checker script like this:
    test/check-recipe.el PATH/TO/RECIPE.rcp

When used as a lisp function, FILE-OR-BUFFER must be a buffer
object or a file path.

\(fn FILE-OR-BUFFER)" t nil)

;;;***

;;;### (autoloads nil "el-get/el-get-list-packages" "el-get/el-get-list-packages.el"
;;;;;;  (22245 60437 590236 377000))
;;; Generated autoloads from el-get/el-get-list-packages.el

(autoload 'el-get-list-packages "el-get/el-get-list-packages" "\
Display a list of packages.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "ensime/ensime" "ensime/ensime.el" (22245 60593
;;;;;;  246908 806000))
;;; Generated autoloads from ensime/ensime.el

(autoload 'ensime "ensime/ensime" "\
Read config file for settings then start an ensime-server and connect.

\(fn)" t nil)

(autoload 'ensime-remote "ensime/ensime" "\
Read config file for settings. Then connect to an existing ENSIME server.

\(fn HOST PORT)" t nil)

;;;***

;;;### (autoloads nil "init-loader/init-loader" "init-loader/init-loader.el"
;;;;;;  (22245 60597 423575 628000))
;;; Generated autoloads from init-loader/init-loader.el

(autoload 'init-loader-load "init-loader/init-loader" "\
Load configuration files in INIT-DIR.

\(fn &optional (init-dir init-loader-directory))" nil nil)

(autoload 'init-loader-show-log "init-loader/init-loader" "\
Show init-loader log buffer.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "js2-mode/js2-imenu-extras" "js2-mode/js2-imenu-extras.el"
;;;;;;  (22245 60602 440242 480000))
;;; Generated autoloads from js2-mode/js2-imenu-extras.el

(autoload 'js2-imenu-extras-setup "js2-mode/js2-imenu-extras" "\


\(fn)" nil nil)

(autoload 'js2-imenu-extras-mode "js2-mode/js2-imenu-extras" "\
Toggle Imenu support for frameworks and structural patterns.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil "js2-mode/js2-mode" "js2-mode/js2-mode.el"
;;;;;;  (22245 60602 446909 147000))
;;; Generated autoloads from js2-mode/js2-mode.el

(autoload 'js2-highlight-unused-variables-mode "js2-mode/js2-mode" "\
Toggle highlight of unused variables.

\(fn &optional ARG)" t nil)

(autoload 'js2-minor-mode "js2-mode/js2-mode" "\
Minor mode for running js2 as a background linter.
This allows you to use a different major mode for JavaScript editing,
such as `js-mode', while retaining the asynchronous error/warning
highlighting features of `js2-mode'.

\(fn &optional ARG)" t nil)

(autoload 'js2-mode "js2-mode/js2-mode" "\
Major mode for editing JavaScript code.

\(fn)" t nil)

(autoload 'js2-jsx-mode "js2-mode/js2-mode" "\
Major mode for editing JSX code.

To customize the indentation for this mode, set the SGML offset
variables (`sgml-basic-offset' et al) locally, like so:

  (defun set-jsx-indentation ()
    (setq-local sgml-basic-offset js2-basic-offset))
  (add-hook 'js2-jsx-mode-hook #'set-jsx-indentation)

\(fn)" t nil)

;;;***

;;;### (autoloads nil "markdown-mode/markdown-mode" "markdown-mode/markdown-mode.el"
;;;;;;  (22245 60610 650242 784000))
;;; Generated autoloads from markdown-mode/markdown-mode.el

(autoload 'markdown-mode "markdown-mode/markdown-mode" "\
Major mode for editing Markdown files.

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))

(add-to-list 'auto-mode-alist '("\\.text\\'" . markdown-mode))

(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

(autoload 'gfm-mode "markdown-mode/markdown-mode" "\
Major mode for editing GitHub Flavored Markdown files.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "molokai-theme/molokai-theme" "molokai-theme/molokai-theme.el"
;;;;;;  (22245 60745 793581 121000))
;;; Generated autoloads from molokai-theme/molokai-theme.el

(and load-file-name (boundp 'custom-theme-load-path) (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name))))

;;;***

;;;### (autoloads nil "rainbow-delimiters/rainbow-delimiters" "rainbow-delimiters/rainbow-delimiters.el"
;;;;;;  (22245 60613 823576 235000))
;;; Generated autoloads from rainbow-delimiters/rainbow-delimiters.el

(autoload 'rainbow-delimiters-mode "rainbow-delimiters/rainbow-delimiters" "\
Highlight nested parentheses, brackets, and braces according to their depth.

\(fn &optional ARG)" t nil)

(autoload 'rainbow-delimiters-mode-enable "rainbow-delimiters/rainbow-delimiters" "\
Enable `rainbow-delimiters-mode'.

\(fn)" nil nil)

(autoload 'rainbow-delimiters-mode-disable "rainbow-delimiters/rainbow-delimiters" "\
Disable `rainbow-delimiters-mode'.

\(fn)" nil nil)

;;;***

;;;### (autoloads nil "sbt-mode/sbt-mode" "sbt-mode/sbt-mode.el"
;;;;;;  (22245 60578 676908 267000))
;;; Generated autoloads from sbt-mode/sbt-mode.el

(autoload 'sbt-start "sbt-mode/sbt-mode" "\
Start sbt

\(fn)" t nil)

(autoload 'run-scala "sbt-mode/sbt-mode" "\
Pop up Scala REPL buffer.

If the sbt buffer is not in REPL mode, it will switch to REPL mode (console).

\(fn)" t nil)

(autoload 'sbt-command "sbt-mode/sbt-mode" "\
Send a command to the sbt process of the current buffer's sbt project.
Prompts for the command to send when in interactive mode. You can
use tab completion.

This command does the following:
  - displays the buffer without moving focus to it
  - erases the buffer
  - forgets about compilation errors

The command is most usefull for running a compilation command
that outputs errors.

\(fn COMMAND)" t nil)

(autoload 'sbt-run-previous-command "sbt-mode/sbt-mode" "\
Repeat the command that was previously executed (or run the
sbt:default-command, if no other command has yet been run).

\(fn)" t nil)

;;;***

;;;### (autoloads nil "sbt-mode/sbt-mode-rgrep" "sbt-mode/sbt-mode-rgrep.el"
;;;;;;  (22245 60578 676908 267000))
;;; Generated autoloads from sbt-mode/sbt-mode-rgrep.el

(autoload 'sbt-grep "sbt-mode/sbt-mode-rgrep" "\
Recursively grep for REGEXP in FILES in directory tree rooted at DIR. By default DIR is is the sbt project root.

\(fn REGEXP &optional FILES DIR CONFIRM)" t nil)

(autoload 'sbt-find-usages "sbt-mode/sbt-mode-rgrep" "\
Recursively grep for ID in scala files in directory tree rooted at DIR. By default DIR is is the sbt project root.

\(fn ID &optional DIR CONFIRM)" t nil)

(autoload 'sbt-find-definitions "sbt-mode/sbt-mode-rgrep" "\
Recursively grep for definition of ID in scala files in the directory tree rooted at the sbt project root.

\(fn ID &optional CONFIRM)" t nil)

;;;***

;;;### (autoloads nil "scala-mode2/scala-mode2" "scala-mode2/scala-mode2.el"
;;;;;;  (22245 60576 346908 180000))
;;; Generated autoloads from scala-mode2/scala-mode2.el

(autoload 'scala-mode:set-scala-syntax-mode "scala-mode2/scala-mode2" "\
Sets the syntax-table and other realted variables for the current buffer to those of scala-mode. Can be used to make some other major mode (such as sbt-mode) use scala syntax-table.

\(fn)" nil nil)

(autoload 'scala-mode:goto-start-of-code "scala-mode2/scala-mode2" "\
Go to the start of the real code in the file: object, class or trait.

\(fn)" t nil)

(autoload 'scala-mode "scala-mode2/scala-mode2" "\
Major mode for editing scala code.

When started, runs `scala-mode-hook'. 

\\{scala-mode-map}

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("\\.\\(scala\\|sbt\\)\\'" . scala-mode))

(modify-coding-system-alist 'file "\\.\\(scala\\|sbt\\)\\'" 'utf-8)

;;;***

;;;### (autoloads nil "smartparens/smartparens" "smartparens/smartparens.el"
;;;;;;  (22245 60566 933574 499000))
;;; Generated autoloads from smartparens/smartparens.el

(autoload 'sp-cheat-sheet "smartparens/smartparens" "\
Generate a cheat sheet of all the smartparens interactive functions.

Without a prefix argument, print only the short documentation and examples.

With non-nil prefix argument, show the full documentation for each function.

You can follow the links to the function or variable help page.
To get back to the full list, use \\[help-go-back].

You can use `beginning-of-defun' and `end-of-defun' to jump to
the previous/next entry.

Examples are fontified using the `font-lock-string-face' for
better orientation.

\(fn &optional ARG)" t nil)

(defvar smartparens-mode-map (make-sparse-keymap) "\
Keymap used for `smartparens-mode'.")

(autoload 'sp-use-paredit-bindings "smartparens/smartparens" "\
Initiate `smartparens-mode-map' with paredit-compatible bindings for
corresponding functions provided by smartparens.  See variable
`sp-paredit-bindings'.

\(fn)" t nil)

(autoload 'sp-use-smartparens-bindings "smartparens/smartparens" "\
Initiate `smartparens-mode-map' with smartparens bindings for navigation functions.
See variable `sp-smartparens-bindings'.

\(fn)" t nil)

(autoload 'smartparens-mode "smartparens/smartparens" "\
Toggle smartparens mode.

You can enable pre-set bindings by customizing
`sp-base-key-bindings' variable.  The current content of
`smartparens-mode-map' is:

 \\{smartparens-mode-map}

\(fn &optional ARG)" t nil)

(autoload 'smartparens-strict-mode "smartparens/smartparens" "\
Toggle the strict smartparens mode.

When strict mode is active, `delete-char', `kill-word' and their
backward variants will skip over the pair delimiters in order to
keep the structure always valid (the same way as `paredit-mode'
does).  This is accomplished by remapping them to
`sp-delete-char' and `sp-kill-word'.  There is also function
`sp-kill-symbol' that deletes symbols instead of words, otherwise
working exactly the same (it is not bound to any key by default).

When strict mode is active, this is indicated with \"/s\"
after the smartparens indicator in the mode list.

\(fn &optional ARG)" t nil)

(defvar smartparens-global-strict-mode nil "\
Non-nil if Smartparens-Global-Strict mode is enabled.
See the command `smartparens-global-strict-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `smartparens-global-strict-mode'.")

(custom-autoload 'smartparens-global-strict-mode "smartparens/smartparens" nil)

(autoload 'smartparens-global-strict-mode "smartparens/smartparens" "\
Toggle Smartparens-Strict mode in all buffers.
With prefix ARG, enable Smartparens-Global-Strict mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Smartparens-Strict mode is enabled in all buffers where
`turn-on-smartparens-strict-mode' would do it.
See `smartparens-strict-mode' for more information on Smartparens-Strict mode.

\(fn &optional ARG)" t nil)

(autoload 'turn-on-smartparens-strict-mode "smartparens/smartparens" "\
Turn on `smartparens-strict-mode'.

\(fn)" t nil)

(defvar smartparens-global-mode nil "\
Non-nil if Smartparens-Global mode is enabled.
See the command `smartparens-global-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `smartparens-global-mode'.")

(custom-autoload 'smartparens-global-mode "smartparens/smartparens" nil)

(autoload 'smartparens-global-mode "smartparens/smartparens" "\
Toggle Smartparens mode in all buffers.
With prefix ARG, enable Smartparens-Global mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Smartparens mode is enabled in all buffers where
`turn-on-smartparens-mode' would do it.
See `smartparens-mode' for more information on Smartparens mode.

\(fn &optional ARG)" t nil)

(autoload 'turn-on-smartparens-mode "smartparens/smartparens" "\
Turn on `smartparens-mode'.

This function is used to turn on `smartparens-global-mode'.

By default `smartparens-global-mode' ignores buffers with
`mode-class' set to special, but only if they are also not comint
buffers.

Additionally, buffers on `sp-ignore-modes-list' are ignored.

You can still turn on smartparens in these mode manually (or
in mode's startup-hook etc.) by calling `smartparens-mode'.

\(fn)" t nil)

(autoload 'turn-off-smartparens-mode "smartparens/smartparens" "\
Turn off `smartparens-mode'.

\(fn)" t nil)

(autoload 'show-smartparens-mode "smartparens/smartparens" "\
Toggle visualization of matching pairs.  When enabled, any
matching pair is highlighted after `sp-show-pair-delay' seconds
of Emacs idle time if the point is immediately in front or after
a pair.  This mode works similarly to `show-paren-mode', but
support custom pairs.

\(fn &optional ARG)" t nil)

(defvar show-smartparens-global-mode nil "\
Non-nil if Show-Smartparens-Global mode is enabled.
See the command `show-smartparens-global-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `show-smartparens-global-mode'.")

(custom-autoload 'show-smartparens-global-mode "smartparens/smartparens" nil)

(autoload 'show-smartparens-global-mode "smartparens/smartparens" "\
Toggle Show-Smartparens mode in all buffers.
With prefix ARG, enable Show-Smartparens-Global mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Show-Smartparens mode is enabled in all buffers where
`turn-on-show-smartparens-mode' would do it.
See `show-smartparens-mode' for more information on Show-Smartparens mode.

\(fn &optional ARG)" t nil)

(autoload 'turn-on-show-smartparens-mode "smartparens/smartparens" "\
Turn on `show-smartparens-mode'.

\(fn)" t nil)

(autoload 'turn-off-show-smartparens-mode "smartparens/smartparens" "\
Turn off `show-smartparens-mode'.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "web-mode/web-mode" "web-mode/web-mode.el"
;;;;;;  (22245 60624 600243 300000))
;;; Generated autoloads from web-mode/web-mode.el

(autoload 'web-mode "web-mode/web-mode" "\
Major mode for editing web templates.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "yasnippet/yasnippet" "yasnippet/yasnippet.el"
;;;;;;  (22245 60585 733575 195000))
;;; Generated autoloads from yasnippet/yasnippet.el

(autoload 'yas-minor-mode "yasnippet/yasnippet" "\
Toggle YASnippet mode.

When YASnippet mode is enabled, `yas-expand', normally bound to
the TAB key, expands snippets of code depending on the major
mode.

With no argument, this command toggles the mode.
positive prefix argument turns on the mode.
Negative prefix argument turns off the mode.

Key bindings:
\\{yas-minor-mode-map}

\(fn &optional ARG)" t nil)

(defvar yas-global-mode nil "\
Non-nil if Yas-Global mode is enabled.
See the command `yas-global-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `yas-global-mode'.")

(custom-autoload 'yas-global-mode "yasnippet/yasnippet" nil)

(autoload 'yas-global-mode "yasnippet/yasnippet" "\
Toggle Yas minor mode in all buffers.
With prefix ARG, enable Yas-Global mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Yas minor mode is enabled in all buffers where
`yas-minor-mode-on' would do it.
See `yas-minor-mode' for more information on Yas minor mode.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil "yatex/yatexenv" "yatex/yatexenv.el" (22245
;;;;;;  60629 166910 137000))
;;; Generated autoloads from yatex/yatexenv.el

(autoload 'YaTeX-what-column "yatex/yatexenv" "\
Show which kind of column the current position is belonging to.

\(fn)" t nil)

(autoload 'YaTeX-intelligent-newline "yatex/yatexenv" "\
Insert newline and environment-specific entry.
`\\item'	for some itemizing environment,
`\\> \\> \\'	for tabbing environemnt,
`& & \\ hline'	for tabular environment.

\(fn ARG)" t nil)

(autoload 'YaTeX-indent-line-equation "yatex/yatexenv" "\
Indent a line in equation family.

\(fn)" nil nil)

(autoload 'YaTeX-goto-corresponding-leftright "yatex/yatexenv" "\
Go to corresponding left or ight.

\(fn)" nil nil)

;;;***

;;;### (autoloads nil "yatex/yatexhlp" "yatex/yatexhlp.el" (22245
;;;;;;  60629 170243 470000))
;;; Generated autoloads from yatex/yatexhlp.el

(autoload 'YaTeX-apropos "yatex/yatexhlp" "\


\(fn KEY)" t nil)

(autoload 'YaTeX-help "yatex/yatexhlp" "\
Show help buffer of LaTeX/TeX commands or macros.
Optional argument MACRO, if supplied, is directly selected to keyword.

\(fn &optional MACRO)" t nil)

;;;***

;;;### (autoloads nil "yatex/yatexlib" "yatex/yatexlib.el" (22245
;;;;;;  60629 173576 803000))
;;; Generated autoloads from yatex/yatexlib.el

(autoload 'YaTeX-define-key "yatex/yatexlib" "\
Define key on YaTeX-prefix-map.

\(fn KEY BINDING &optional MAP)" nil nil)

(autoload 'YaTeX-local-table-symbol "yatex/yatexlib" "\
Return the lisp symbol which keeps local completion table of SYMBOL.

\(fn SYMBOL)" nil nil)

(autoload 'YaTeX-sync-local-table "yatex/yatexlib" "\
Synchronize local variable SYMBOL.
Copy its corresponding directory dependent completion table to SYMBOL.

\(fn SYMBOL)" nil nil)

(autoload 'YaTeX-read-user-completion-table "yatex/yatexlib" "\
Append user completion table of LaTeX macros

\(fn &optional FORCETOREAD)" t nil)

(autoload 'YaTeX-reload-dictionary "yatex/yatexlib" "\
Reload local dictionary.
Use this function after editing ./.yatexrc.

\(fn)" t nil)

(autoload 'YaTeX-lookup-table "yatex/yatexlib" "\
Lookup WORD in completion table whose type is TYPE.
This function refers the symbol tmp-TYPE-table, user-TYPE-table, TYPE-table.
Typically, TYPE is one of 'env, 'section, 'fontsize, 'singlecmd.

\(fn WORD TYPE)" nil nil)

(autoload 'YaTeX-update-table "yatex/yatexlib" "\
Update completion table if the car of VALLIST is not in current tables.
Second argument DEFAULT-TABLE is the quoted symbol of default completion
table, third argument USER-TABLE is user table which will be saved in
YaTeX-user-completion-table, fourth argument LOCAL-TABLE should have the
completion which is valid during current Emacs's session.  If you
want to make LOCAL-TABLE valid longer span (but restrict in this directory)
create the file in current directory which has the same name with
YaTeX-user-completion-table.

\(fn VALLIST DEFAULT-TABLE USER-TABLE LOCAL-TABLE)" nil nil)

(autoload 'YaTeX-cplread-with-learning "yatex/yatexlib" "\
Completing read with learning.
Do a completing read with prompt PROM.  Completion table is what
DEFAULT-TABLE, USER-TABLE, LOCAL table are appended in reverse order.
Note that these tables are passed by the symbol.
Optional arguments PRED, REQMATH and INIT are passed to completing-read
as its arguments PREDICATE, REQUIRE-MATCH and INITIAL-INPUT respectively.
If optional 8th argument HSYM, history symbol, is passed, use it as
history list variable.

\(fn PROM DEFAULT-TABLE USER-TABLE LOCAL-TABLE &optional PRED REQMATCH INIT HSYM)" nil nil)

(autoload 'YaTeX-update-dictionary "yatex/yatexlib" "\


\(fn FILE SYMBOL &optional TYPE)" nil nil)

(autoload 'YaTeX-define-begend-key-normal "yatex/yatexlib" "\
Define short cut YaTeX-make-begin-end key.

\(fn KEY ENV &optional MAP)" nil nil)

(autoload 'YaTeX-define-begend-region-key "yatex/yatexlib" "\
Define short cut YaTeX-make-begin-end-region key.

\(fn KEY ENV &optional MAP)" nil nil)

(autoload 'YaTeX-define-begend-key "yatex/yatexlib" "\
Define short cut key for begin type completion.
Define both strokes for normal and region mode.
To customize YaTeX, user should use this function.

\(fn KEY ENV &optional MAP)" nil nil)

(autoload 'YaTeX-search-active-forward "yatex/yatexlib" "\
Search STRING which is not commented out by CMNTRX.
Optional arguments after BOUND, ERR, CNT are passed literally to search-forward
or search-backward.
Optional sixth argument FUNC changes search-function.

\(fn STRING CMNTRX &optional BOUND ERR CNT FUNC)" nil nil)

(autoload 'YaTeX-switch-to-buffer "yatex/yatexlib" "\
Switch to buffer if buffer exists, find file if not.
Optional second arg SETBUF t make use set-buffer instead of switch-to-buffer.

\(fn FILE &optional SETBUF)" t nil)

(autoload 'YaTeX-switch-to-buffer-other-window "yatex/yatexlib" "\
Switch to buffer if buffer exists, find file if not.

\(fn FILE)" t nil)

(autoload 'YaTeX-replace-format "yatex/yatexlib" "\
In STRING, replace first appearance of FORMAT to REPL as if
function `format' does.  FORMAT does not contain `%'

\(fn STRING FORMAT REPL)" nil nil)

(autoload 'YaTeX-replace-formats "yatex/yatexlib" "\


\(fn STRING REPLACE-LIST)" nil nil)

(autoload 'YaTeX-replace-format-args "yatex/yatexlib" "\
Translate the argument mark #1, #2, ... #n in the STRING into the
corresponding real arguments ARGS.

\(fn STRING &rest ARGS)" nil nil)

(autoload 'rindex "yatex/yatexlib" "\
Return the last position of STRING where character CHAR found.

\(fn STRING CHAR)" nil nil)

(autoload 'point-beginning-of-line "yatex/yatexlib" "\


\(fn)" nil nil)

(autoload 'point-end-of-line "yatex/yatexlib" "\


\(fn)" nil nil)

(autoload 'YaTeX-showup-buffer "yatex/yatexlib" "\
Make BUFFER show up in certain window (but current window)
that gives the maximum value by the FUNC.  FUNC should take an argument
of its window object.  Non-nil for optional third argument SELECT selects
that window.  This function never selects minibuffer window.

\(fn BUFFER &optional FUNC SELECT)" nil nil)

(autoload 'split-window-calculate-height "yatex/yatexlib" "\
Split current window wight specified HEIGHT.
If HEIGHT is number, make a new window that has HEIGHT lines.
If HEIGHT is string, make a new window that occupies HEIGT % of screen height.
Otherwise split window conventionally.

\(fn HEIGHT)" nil nil)

(autoload 'YaTeX-window-list "yatex/yatexlib" "\


\(fn)" nil nil)

(autoload 'substitute-all-key-definition "yatex/yatexlib" "\
Replace recursively OLDDEF with NEWDEF for any keys in KEYMAP now
defined as OLDDEF. In other words, OLDDEF is replaced with NEWDEF
where ever it appears.

\(fn OLDDEF NEWDEF KEYMAP)" nil nil)

(autoload 'YaTeX-match-string "yatex/yatexlib" "\
Return (buffer-substring (match-beginning n) (match-beginning m)).

\(fn N &optional M)" nil nil)

(autoload 'YaTeX-minibuffer-complete "yatex/yatexlib" "\
Complete in minibuffer.
  If the symbol 'delim is bound and is string, its value is assumed to be
the character class of delimiters.  Completion will be performed on
the last field separated by those delimiters.
  If the symbol 'quick is bound and is 't, when the try-completion results
in t, exit minibuffer immediately.

\(fn)" t nil)

(autoload 'completing-read-with-history "yatex/yatexlib" "\
Completing read with general history: gmhist, Emacs-19.

\(fn PROMPT TABLE &optional PREDICATE MUST-MATCH INITIAL HSYM)" nil nil)

(autoload 'read-from-minibuffer-with-history "yatex/yatexlib" "\
Read from minibuffer with general history: gmhist, Emacs-19.

\(fn PROMPT &optional INIT MAP READ HSYM)" nil nil)

(autoload 'read-string-with-history "yatex/yatexlib" "\
Read string with history: gmhist(Emacs-18) and Emacs-19.

\(fn PROMPT &optional INIT HSYM)" nil nil)

(fset 'YaTeX-rassoc (if (and nil (fboundp 'rassoc) (subrp (symbol-function 'rassoc))) (symbol-function 'rassoc) #'(lambda (key list) (let ((l list)) (catch 'found (while l (if (equal key (cdr (car l))) (throw 'found (car l))) (setq l (cdr l))))))))

(autoload 'YaTeX-delete1 "yatex/yatexlib" "\
Delete

\(fn ELT LIST)" nil nil)

(fset 'YaTeX-last-key (if (fboundp 'win:last-key) 'win:last-key #'(lambda nil (if (boundp 'last-command-char) last-command-char last-command-event))))

(autoload 'YaTeX-command-to-string "yatex/yatexlib" "\


\(fn CMD)" nil nil)

(autoload 'YaTeX-reindent "yatex/yatexlib" "\
Remove current indentation and reindento to COL column.

\(fn COL)" nil nil)

;;;***

;;;### (autoloads nil "yatex/yatexmth" "yatex/yatexmth.el" (22245
;;;;;;  60629 493576 815000))
;;; Generated autoloads from yatex/yatexmth.el

(autoload 'YaTeX-toggle-math-mode "yatex/yatexmth" "\


\(fn &optional ARG)" t nil)

(autoload 'YaTeX-goto-corresponding-paren "yatex/yatexmth" "\
Go to corresponding mathematical parentheses.

\(fn)" nil nil)

;;;***

;;;### (autoloads nil "yatex/yatexsec" "yatex/yatexsec.el" (22245
;;;;;;  60629 183576 804000))
;;; Generated autoloads from yatex/yatexsec.el

(autoload 'YaTeX-read-section-in-minibuffer "yatex/yatexsec" "\


\(fn PROMPT TABLE &optional DEFAULT DELIM)" t nil)

(autoload 'YaTeX-make-section-with-overview "yatex/yatexsec" "\
Input sectining command with previous overview.

\(fn)" t nil)

;;;***

;;;### (autoloads nil nil ("auto-complete/auto-complete-pkg.el" "company-mode/company-capf.el"
;;;;;;  "company-mode/company-clang.el" "company-mode/company-cmake.el"
;;;;;;  "company-mode/company-eclim.el" "company-mode/company-template.el"
;;;;;;  "company-mode/company-tests.el" "dash/dash-functional.el"
;;;;;;  "dash/dash.el" "el-get/el-get-autoloading.el" "el-get/el-get-build.el"
;;;;;;  "el-get/el-get-byte-compile.el" "el-get/el-get-core.el" "el-get/el-get-custom.el"
;;;;;;  "el-get/el-get-dependencies.el" "el-get/el-get-install.el"
;;;;;;  "el-get/el-get-methods.el" "el-get/el-get-notify.el" "el-get/el-get-recipes.el"
;;;;;;  "el-get/el-get-status.el" "ensime/ensime-auto-complete.el"
;;;;;;  "ensime/ensime-client.el" "ensime/ensime-comint-utils.el"
;;;;;;  "ensime/ensime-company.el" "ensime/ensime-completion-util.el"
;;;;;;  "ensime/ensime-config.el" "ensime/ensime-debug.el" "ensime/ensime-doc.el"
;;;;;;  "ensime/ensime-editor.el" "ensime/ensime-expand-region.el"
;;;;;;  "ensime/ensime-goto-testfile.el" "ensime/ensime-http.el"
;;;;;;  "ensime/ensime-inf.el" "ensime/ensime-inspector.el" "ensime/ensime-macros.el"
;;;;;;  "ensime/ensime-mode.el" "ensime/ensime-model.el" "ensime/ensime-notes.el"
;;;;;;  "ensime/ensime-popup.el" "ensime/ensime-refactor.el" "ensime/ensime-sbt.el"
;;;;;;  "ensime/ensime-search.el" "ensime/ensime-semantic-highlight.el"
;;;;;;  "ensime/ensime-stacktrace.el" "ensime/ensime-startup.el"
;;;;;;  "ensime/ensime-test.el" "ensime/ensime-ui.el" "ensime/ensime-undo.el"
;;;;;;  "ensime/ensime-util.el" "ensime/ensime-vars.el" "fuzzy/fuzzy.el"
;;;;;;  "init-loader/test-init-loader.el" "js2-mode/js2-old-indent.el"
;;;;;;  "molokai-theme/molokai-theme-kit.el" "popup/popup.el" "rainbow-delimiters/rainbow-delimiters-test.el"
;;;;;;  "s/s.el" "sbt-mode/sbt-mode-buffer.el" "sbt-mode/sbt-mode-comint.el"
;;;;;;  "sbt-mode/sbt-mode-pkg.el" "sbt-mode/sbt-mode-project.el"
;;;;;;  "sbt-mode/sbt-mode-vars.el" "scala-mode2/scala-mode2-fontlock.el"
;;;;;;  "scala-mode2/scala-mode2-imenu.el" "scala-mode2/scala-mode2-indent.el"
;;;;;;  "scala-mode2/scala-mode2-lib.el" "scala-mode2/scala-mode2-map.el"
;;;;;;  "scala-mode2/scala-mode2-paragraph.el" "scala-mode2/scala-mode2-pkg.el"
;;;;;;  "scala-mode2/scala-mode2-sbt.el" "scala-mode2/scala-mode2-syntax.el"
;;;;;;  "smartparens/smartparens-config.el" "smartparens/smartparens-haskell.el"
;;;;;;  "smartparens/smartparens-html.el" "smartparens/smartparens-latex.el"
;;;;;;  "smartparens/smartparens-lua.el" "smartparens/smartparens-pkg.el"
;;;;;;  "smartparens/smartparens-python.el" "smartparens/smartparens-racket.el"
;;;;;;  "smartparens/smartparens-ruby.el" "smartparens/smartparens-rust.el"
;;;;;;  "smartparens/smartparens-scala.el" "yasnippet/yasnippet-debug.el"
;;;;;;  "yasnippet/yasnippet-tests.el" "yatex/comment.el" "yatex/yahtml.el"
;;;;;;  "yatex/yatex.el" "yatex/yatex19.el" "yatex/yatex23.el" "yatex/yatexadd.el"
;;;;;;  "yatex/yatexgen.el" "yatex/yatexhie.el" "yatex/yatexhks.el"
;;;;;;  "yatex/yatexinf.el" "yatex/yatexm-o.el" "yatex/yatexpkg.el"
;;;;;;  "yatex/yatexprc.el") (22245 60746 149338 148000))

;;;***

(provide '.loaddefs)
;; Local Variables:
;; version-control: never
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; .loaddefs.el ends here
