(add-hook 'prog-mode-hook #'hs-minor-mode)

(global-set-key (kbd "C-c C-,") 'hs-hide-block)
(global-set-key (kbd "C-c C-.") 'hs-show-block)

(provide 'setup-hideshow-mode)
