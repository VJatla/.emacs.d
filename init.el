
;; Automatically generated customization goes to another file

(setq custom-file "~/.emacs.d/auto-customization.el")
(load custom-file)

;; Suppress compilation warnings from third-party packages
(setq native-comp-async-report-warnings-errors nil)
(setq byte-compile-warnings '(not free-vars unresolved noruntime lexical make-local))

;; Emacs package management, use-package + straight.el

;; Bootstrap straight.el
(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 6))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/radian-software/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

;; Tell straight.el to use built-in project.el instead of installing it
(straight-use-package '(project :type built-in))

;; Install use-package via straight
(straight-use-package 'use-package)

;; Configure use-package to use straight.el by default
(eval-and-compile
  (setq straight-use-package-by-default t
        use-package-expand-minimally t))

;; Keep package.el setup for any legacy packages if needed
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

;; Nice defaults
(org-babel-load-file "~/.emacs.d/defaults.org")
(org-babel-load-file "~/.emacs.d/markdown.org")

(org-babel-load-file "~/.emacs.d/org.org")
(org-babel-load-file "~/.emacs.d/dired.org")
(org-babel-load-file "~/.emacs.d/csv.org")
(org-babel-load-file "~/.emacs.d/project-management.org")
(org-babel-load-file "~/.emacs.d/completion-framework.org")
(org-babel-load-file "~/.emacs.d/checking-framework.org")
;;(org-babel-load-file "~/.emacs.d/lsp.org")
(org-babel-load-file "~/.emacs.d/eglot.org")
(org-babel-load-file "~/.emacs.d/python.org")
(org-babel-load-file "~/.emacs.d/typescript.org")
(org-babel-load-file "~/.emacs.d/snippets.org")
(org-babel-load-file "~/.emacs.d/latex.org")
(org-babel-load-file "~/.emacs.d/fun.org")
(org-babel-load-file "~/.emacs.d/gptel.org")
;;(org-babel-load-file "~/.emacs.d/llms.org")
;;(org-babel-load-file "~/Dropbox/keybindings.org")



;; Specific to the macbook pro from FBRI
(when (string= (system-name) "VT000447010")
  (org-babel-load-file "~/.emacs.d/denote.org")
  (org-babel-load-file "~/.emacs.d/agenda.org")
  (org-babel-load-file "~/Dropbox/keybindings_meow.org"))

(when (string= (system-name) "VT000504741")
  (org-babel-load-file "~/.emacs.d/denote.org")
  (org-babel-load-file "~/.emacs.d/agenda.org")
  (org-babel-load-file "~/Dropbox/keybindings_meow.org"))

(when (string= (system-name) "yatra")
  (org-babel-load-file "~/.emacs.d/denote.org")
  (org-babel-load-file "~/.emacs.d/agenda.org")
  (org-babel-load-file "~/Dropbox/keybindings_meow.org"))

(when (string= (system-name) "VME-PRD-HNL01N.vtcri.local")
  (org-babel-load-file "~/.emacs.d/keybindings_meow.org"))

(when (string= (system-name) "HNL-PRD-APP03.VTCRI.LOCAL")
  (org-babel-load-file "~/.emacs.d/keybindings_meow.org"))
(when (string= (system-name) "HNL-PRD-APP02.vtcri.local")
  (org-babel-load-file "~/.emacs.d/keybindings_meow.org"))

(when (string-match "turing" (downcase (system-name)))
  (org-babel-load-file "~/.emacs.d/keybindings_bray.org"))
