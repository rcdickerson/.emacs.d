(use-package rustic
  :bind (:map rustic-mode-map
              ("M-j" . lsp-ui-imenu)
              ("C-c C-c l" . flycheck-list-errors)
              ("C-c C-c a" . lsp-execute-code-action)
              ("C-c C-c r" . lsp-rename)))

(add-hook 'rust-mode-hook 'hl-todo-mode)

(setq rust-indent-offset 2)

(provide 'setup-rustic)
