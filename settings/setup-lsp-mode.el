(use-package lsp-mode
  :init
  ;; set prefix for lsp-command-keymap (few alternatives - "C-l", "C-c l")
  (setq lsp-keymap-prefix "C-c l")
  :hook ((haskell-mode . lsp)
         (python-mode . lsp)
         (rust-mode . lsp)
         (rustic-mode . lsp)
         ;; if you want which-key integration
         (lsp-mode . lsp-enable-which-key-integration))
  :commands lsp)
(use-package lsp-ui :commands lsp-ui-mode)

;; Don't automatically show doc popup for everything.
(setq lsp-ui-doc-enable nil)

;; Snippets seem to cause me trouble, disabling for now.
;; (Maybe a bug? Might be able to re-enable in future.)
;; https://github.com/doomemacs/doomemacs/issues/6949
(setq lsp-enable-snippet nil)

(provide 'setup-lsp-mode)
