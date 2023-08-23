(setq rust-indent-offset 2)

(with-eval-after-load 'rust-mode
  (add-hook 'flycheck-mode-hook #'flycheck-rust-setup))

(provide 'setup-rust-mode)
