;; No mouse interface. Do this early to avoid momentary flicker.
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

;; No splash screen.
(setq inhibit-startup-message t)

;; Use Inconsolata where available.
(when (member "Inconsolata" (font-family-list))
  (set-face-attribute 'default nil :font "Inconsolata-12"))

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
(setq package-enable-at-startup nil)
(require 'setup-package)
(install-missing-packages
 '(all-the-icons
   ample-zen-theme
   auctex
   company
   company-coq
   dockerfile-mode
   doom-modeline
   exec-path-from-shell
   expand-region
   eyebrowse
   fill-column-indicator
   flx
   flx-ido
   flycheck
   flycheck-rust
   git-gutter
   haskell-mode
   idris-mode
   json-mode
   leuven-theme
   lsp-mode
   lsp-ui
   magit
   markdown-mode
   neotree
   nerd-icons
   projectile
   proof-general
   smex
   rainbow-delimiters
   rustic
   vertico
   web-mode
   ))

;; Load configurations.
(require 'setup-all-the-icons)
(require 'setup-agda-mode)
(require 'setup-auctex)
(require 'setup-company-coq)
(require 'setup-doom-modeline)
(require 'setup-exec-path-from-shell)
(require 'setup-eyebrowse)
(require 'setup-fci)
(require 'setup-flycheck)
(require 'setup-flyspell)
(require 'setup-git-gutter)
(require 'setup-go-mode)
(require 'setup-hideshow-mode)
(require 'setup-ido)
(require 'setup-ispell)
(require 'setup-js-mode)
(require 'setup-lsp-mode)
(require 'setup-neotree)
(require 'setup-nerd-icons)
(require 'setup-org)
(require 'setup-projectile)
(require 'setup-rainbow-delimiters)
(require 'setup-rustic)
(require 'setup-smex)
(require 'setup-vertico)
(require 'setup-web-mode)

;; Theme.
(load-theme 'ample-zen t)
;(require 'leuven-theme) ; A light theme

;; Key bindings.
(require 'key-bindings)
