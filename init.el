;;; Custom set variables to different file
(setq package-check-signature nil)
(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)

;; Disable themes
(defun disable-all-themes ()
  "disable all active themes."
  (dolist (i custom-enabled-themes)
    (disable-theme i)))
(disable-all-themes)

;;; Package repositories
(setq package-archives
      '(
	("gnu" . "https://elpa.gnu.org/packages/")
	("melpa" . "https://melpa.org/packages/")
	)
      )

;; Shutdown emacs server function
;; define function to shutdown emacs server instance
(defun server-shutdown ()
  "Save buffers, Quit, and Shutdown (kill) server"
  (interactive)
  (save-some-buffers)
  (kill-emacs)
  )

;; Activating use-package (Installing if not found)
(require 'package)
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(unless (package-installed-p 'org)
  (package-refresh-contents)
  (package-install 'org))

;; All backup files are in one directory
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

;; Load literate configuration file
 (setq org-agenda-include-diary t)
(cond
 ;; Windows settings
 ((string-equal system-type "windows-nt")
  ;; The following path is necessary to get following working,
  ;; 1. wakatime
  ;; 2. anaconda-mode -- Python
  (setq wakatime-python-bin '("C:/msys64/mingw64/bin/python.exe"))
  (setq wakatime-cli-path '("C:/msys64/mingw64/bin/wakatime.exe"))
  
  (setq org-agenda-files '("C:/Users/vj/Dropbox/org/tasks"))
  (setq diary-file "C:/Users/vj/Dropbox/org/diary-file")
  
  (setenv "PATH" (concat (getenv "PATH") "C:/msys64/mingw64/bin/"))
  (setq exec-path (append exec-path '("C:/msys64/mingw64/bin/")))
  )

 ;; Darwin
 ((string-equal system-type "darwin")

  (setq org-agenda-files '("/Users/vj/Dropbox/org/tasks"))
  (setq diary-file "/Users/vj/Dropbox/org/diary-file")
  (custom-set-variables '(wakatime-cli-path "/opt/anaconda3/bin/wakatime"))
  
  (add-to-list 'default-frame-alist
               '(font . "Menlo-13"))
  (use-package color-theme-sanityinc-tomorrow
    :ensure t)
  (load-theme 'sanityinc-tomorrow-day t)
  
  )
 
 ;; Linux settings
 ((string-equal system-type "gnu/linux")
  ;; The following path is necessary to get following working,
  ;; 1. wakatime
  ;; 2. anaconda-mode
  (setq diary-file "~/Dropbox/org/diary-file")
  (setenv "PATH" (concat (getenv "PATH") ":/home/vj/.local/bin"))
  (setq exec-path (append exec-path '("/home/vj/.local/bin")))
  (setenv "PATH" (concat (getenv "PATH") ":/home/vj/anaconda3/bin"))
  (setq exec-path (append exec-path '("/home/vj/anaconda3/bin")))
  )
 )

;; Loading literate config files
(org-babel-load-file "~/.emacs.d/literate-config/configuration.org")
(org-babel-load-file "~/.emacs.d/literate-config/keybindings.org")
(org-babel-load-file "~/.emacs.d/literate-config/python.org")
(org-babel-load-file "~/.emacs.d/literate-config/web.org")
(org-babel-load-file "~/.emacs.d/literate-config/latex.org")
(org-babel-load-file "~/.emacs.d/literate-config/elisp.org")

;; Theme and fonts based on system name
(cond
 ((string-equal (system-name) "gojira")
  (load-theme 'spacemacs-dark t)
   (setq org-agenda-files (directory-files-recursively "/home/vj/data/Dropbox/org/tasks/" "/\.org$"))
  (setq diary-file "/mnt/data_ext4/Dropbox/org/diary-file")
  (add-to-list 'default-frame-alist
               '(font . "Fantasque Sans Mono-16"))
  );; gojira-linux

  ((string-equal (upcase (system-name)) "XPS")
   (load-theme 'apropospriate-dark t)
  (setq org-agenda-files '("/home/vj/Dropbox/org/tasks"))
  (setq diary-file "/home/vj/Dropbox/org/diary-file")
  (add-to-list 'default-frame-alist
               '(font . "LiberationMono-14"))
  );; gojira-linux


 ((string-equal (system-name) "precision7920")
  (load-theme 'tsdh-dark t)
  (set-frame-font "DejaVu Sans Mono 11" nil t)
  (add-to-list 'default-frame-alist '(height . 50))
  (add-to-list 'default-frame-alist '(width . 100))
  );; Precision7920 or RTX3
 
  ((string-equal (system-name) "XPS-WIN")
  (load-theme 'sanityinc-tomorrow-eighties t)
     (add-to-list 'default-frame-alist
		'(font . "JetBrains Mono Medium-12"))
     );; xps-win (WSL)

    ((string-equal (system-name) "ember")
   (load-theme 'gruvbox-dark-soft t)
   (add-to-list 'default-frame-alist
		'(font . "DejavuSansMono-13"))
   );; EMBER - Linux

  ((string-equal (system-name) "EMBER")
   (load-theme 'gruvbox-dark-soft t)
   (add-to-list 'default-frame-alist
		'(font . "Consolas-11"))
   (setq wakatime-python-bin '("C:/msys64/mingw64/bin/python.exe"))
   (setq wakatime-cli-path '("C:/msys64/mingw64/bin/wakatime.exe"))
   );; EMBER - Windows

  ((string-equal (upcase (system-name)) "SAPHIRA")
   (load-theme 'nord t)
   (add-to-list 'default-frame-alist
		'(font . "JetBrains Mono Medium-12"))
   (setq wakatime-python-bin '("C:\msys64\mingw64\bin\python.exe"))
   (setq wakatime-cli-path '("C:\msys64\mingw64\bin\wakatime.exe"))
   );; SAPHIRA - Windows
  ) ;; cond
