(add-hook 'prog-mode-hook #'hs-minor-mode)

(add-to-list 'hs-special-modes-alist
	     '(protobuf-mode
	       "\\(/\\*\\|{\\)" "\\(\\*/\\|}\\)" "//"
         nil))

(global-set-key (kbd "C-c C-,") 'hs-hide-block)
(global-set-key (kbd "C-c C-.") 'hs-show-block)

(provide 'setup-hideshow-mode)
