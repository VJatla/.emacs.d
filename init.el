;; Loading custom file with automatically generated settings
(setq custom-file "~/.emacs.d/auto-gen-custom.el")
(load custom-file)

;; Disable package.el in favor of straight.el
(setq package-enable-at-startup nil)

;; Installing required packages
(org-babel-load-file "~/.emacs.d/install_packages.org")
(org-babel-load-file "~/.emacs.d/looks.org")
(org-babel-load-file "~/.emacs.d/function.org")
(org-babel-load-file "~/.emacs.d/agenda.org")
(org-babel-load-file "~/.emacs.d/org.org")
(org-babel-load-file "~/.emacs.d/markdown.org")
(org-babel-load-file "~/.emacs.d/denote.org")
(org-babel-load-file "~/.emacs.d/latex.org")
(org-babel-load-file "~/.emacs.d/configuration.org")
(org-babel-load-file "~/.emacs.d/keybindings.org")

