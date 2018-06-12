;; Load company-coq when opening Coq files
(add-hook 'coq-mode-hook #'company-coq-mode)

(provide 'setup-company-coq)