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
(setq backup-directory-alist
      `(("." . ,backup-dir)))
(setq auto-save-list-file-prefix
      backup-dir)

;; Keep emacs Custom-settings in a separate file.
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(load custom-file)

;; Load global editor settings.
(require 'global-settings)

;; Make sure packages are installed.
(require 'setup-package)
(install-missing-packages
 '(flx
   flx-ido
   projectile
   ))

;; Load configurations.
(require 'setup-ido)
(require 'setup-org)

;; Load key bindings.
(require 'key-bindings)
