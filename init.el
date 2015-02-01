;; No mouse interface. Do this early to avoid momentary flicker.
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

;; No splash screen.
(setq inhibit-startup-message t)

;; Set up load paths.
(setq settings-dir
      (expand-file-name "settings" user-emacs-directory))
(add-to-list 'load-path settings-dir)

;; Write backup files and autosaves to their own directory.
(defconst backup-dir (expand-file-name
                      (concat user-emacs-directory "backups")))
(setq backup-directory-alist `(("." . ,backup-dir)))
(setq auto-save-file-name-transforms `((".",backup-dir t)))
(setq auto-save-list-file-prefix backup-dir)

;; Keep emacs Custom-settings in a separate file.
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(load custom-file)

;; Load global editor settings.
(require 'global-settings)

;; Install missing packages.
(require 'setup-package)

(defun init--install-packages()
  (packages-install
   '(flx
     flx-ido
     )))

(condition-case nil
    (init--install-packages)
  (error
   (package-refresh-contents)
   (init--install-packages)))

;; Configure packages.
(require 'setup-ido)
