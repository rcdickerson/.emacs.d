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
      `((".*" . ,backup-dir)))
(setq auto-save-file-name-transforms
      `((".*", backup-dir t)))

;; Keep custom settings in a separate file.
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(load custom-file)

;; Load global editor settings.
(require 'global-settings)

;; Make sure packages are installed.
(require 'setup-package)
(install-missing-packages
 '(ample-zen-theme
   expand-region
   fill-column-indicator
   flx
   flx-ido
   haskell-mode
   projectile
   smex
   ))

;; Load configurations.
(require 'setup-fci)
(require 'setup-ido)
(require 'setup-js-mode)
(require 'setup-org)
(require 'setup-projectile)
(require 'setup-smex)

;; Color theme.
(require 'ample-zen-theme)

;; Key bindings.
(require 'key-bindings)
