
;; Automatically generated customization goes to another file

(setq custom-file "~/.emacs.d/auto-customization.el")
(load custom-file)

;; Suppress compilation warnings from third-party packages
(setq native-comp-async-report-warnings-errors nil)
(setq byte-compile-warnings '(not free-vars unresolved noruntime lexical make-local))

;; Emacs package management, use-package + quelpa

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t);; (unofficial) Milkypostman’s Emacs Lisp Package Archive
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(eval-and-compile
  (setq use-package-always-ensure t
        use-package-expand-minimally t))

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
;;(org-babel-load-file "~/.emacs.d/ai.org")
(org-babel-load-file "~/.emacs.d/python.org")
(org-babel-load-file "~/.emacs.d/typescript.org")
(org-babel-load-file "~/.emacs.d/snippets.org")
(org-babel-load-file "~/.emacs.d/latex.org")
(org-babel-load-file "~/.emacs.d/fun.org")
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

(when (string= (system-name) "fedora")
  (org-babel-load-file "~/.emacs.d/denote.org")
  (org-babel-load-file "~/.emacs.d/agenda.org")
  (org-babel-load-file "~/Dropbox/keybindings_bray.org"))

(when (string= (system-name) "VME-PRD-HNL01N.vtcri.local")
  (org-babel-load-file "~/.emacs.d/keybindings_meow.org"))

(when (string= (system-name) "HNL-PRD-APP03.VTCRI.LOCAL")
  (org-babel-load-file "~/.emacs.d/keybindings_meow.org"))
(when (string= (system-name) "HNL-PRD-APP02.vtcri.local")
  (org-babel-load-file "~/.emacs.d/keybindings_meow.org"))

(when (string-match "turing" (downcase (system-name)))
  (org-babel-load-file "~/.emacs.d/keybindings_bray.org"))
