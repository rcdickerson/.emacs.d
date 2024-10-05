(setq company-minimum-prefix-length 1)

;; Load company-coq when opening Coq files
(add-hook 'coq-mode-hook #'company-coq-mode)

(provide 'setup-company)
