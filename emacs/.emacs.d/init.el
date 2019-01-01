;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("aaffceb9b0f539b6ad6becb8e96a04f2140c8faa1de8039a343a4f1e009174fb" default)))
 '(org-agenda-files
   (quote
    ("/home/klie/notes/topics/someday.org" "/home/klie/notes/topics/listen-read-watch.org" "/home/klie/notes/projects/chinese.org" "/home/klie/notes/dates/2018-november.org" "/home/klie/notes/journal/2018_48.org")) t)
 '(package-selected-packages
   (quote
    (org-bullets gruvbox evil gruvbox-theme dracula-theme use-package org))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(setq inhibit-startup-message t)

(require 'package)
(setq package-enable-at-startup nil)

(defvar melpa '("melpa" . "https://melpa.org/packages/"))
(defvar melpa-stable '("melpa-stable" . "https://stable.melpa.org/packages/"))
(defvar org-elpa '("org" . "https://orgmode.org/elpa/"))

(add-to-list 'package-archives melpa-stable t)
(add-to-list 'package-archives melpa t)
(add-to-list 'package-archives org-elpa t)

(package-initialize)

;; Bootstrap `use-package'
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; 'use-package' settings (from use-package README)
(eval-when-compile
  (require 'use-package))

;; Set theme
(use-package gruvbox-theme
  :ensure t
  :init
  (load-theme 'gruvbox t))

(use-package org
  :init
  (load-library "find-lisp")
  (setq org-agenda-files (find-lisp-find-files "~/notes" "\\.org$"))
  :bind
  (("C-c a" . org-agenda))
  )

(use-package org-bullets
  :ensure t
  :config
  (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1))))
  

;; Use utf-8
(set-language-environment "UTF-8")

;; Disable menu bar
(menu-bar-mode -1)

;; System locale to use for formatting time values.
(setq system-time-locale "C")

;; Enable ido mode
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(setq ido-use-virtual-buffers t)
(ido-mode 1)

;; use ibuffer instead of list-buffers
(defalias 'list-buffers 'ibuffer)

;; Use y and n for yes and no
(defalias 'yes-or-no-p 'y-or-n-p)

;; Disable bell
(setq ring-bell-function 'ignore)

;; Disable backups and autosaves
(setq make-backup-file nil)
(setq auto-save-default nil)

;; Show column and line number
(line-number-mode 1)
(column-number-mode 1)
