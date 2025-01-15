
;; Automatically generated customization goes to another file

(setq custom-file "~/.emacs.d/auto-customization.el")
(load custom-file)


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


;; quelpa
;; If you cannot install automatically then
;;     (1) Download quelpa.el from https://github.com/quelpa/quelpa/blob/master/quelpa.el
;;     (2) place in a directory having load-path
;;     (3) Add this line ---> (add-to-list 'load-path "~/.emacs.d/manually-downloaded/")
(unless (package-installed-p 'quelpa)
  (with-temp-buffer
    (url-insert-file-contents "https://raw.githubusercontent.com/quelpa/quelpa/master/quelpa.el")
    (eval-buffer)
    (quelpa-self-upgrade)))
(require 'quelpa)

;; quelpa with use-package
(quelpa
 '(quelpa-use-package
   :fetcher git
   :url "https://github.com/quelpa/quelpa-use-package.git"))
(require 'quelpa-use-package)

;; Nice defaults
(org-babel-load-file "~/.emacs.d/defaults.org")
(org-babel-load-file "~/.emacs.d/markdown.org")
(org-babel-load-file "~/.emacs.d/agenda.org")
(org-babel-load-file "~/.emacs.d/denote.org")
(org-babel-load-file "~/.emacs.d/dired.org")
(org-babel-load-file "~/.emacs.d/csv.org")
(org-babel-load-file "~/.emacs.d/project-management.org")
(org-babel-load-file "~/.emacs.d/completion-framework.org")
(org-babel-load-file "~/.emacs.d/checking-framework.org")
;;(org-babel-load-file "~/.emacs.d/lsp.org")
(org-babel-load-file "~/.emacs.d/eglot.org")
(org-babel-load-file "~/.emacs.d/python.org")
(org-babel-load-file "~/.emacs.d/snippets.org")
(org-babel-load-file "~/.emacs.d/latex.org")
(org-babel-load-file "~/Dropbox/keybindings.org")
