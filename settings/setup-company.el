(setq company-minimum-prefix-length 1)

;; Load company-coq when opening Coq files
(add-hook 'coq-mode-hook #'company-coq-mode)

(use-package yasnippet
  :ensure
  :config
  (yas-reload-all)
  (add-hook 'prog-mode-hook 'yas-minor-mode)
  (add-hook 'text-mode-hook 'yas-minor-mode))

(provide 'setup-company)
