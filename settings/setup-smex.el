(require 'smex)

;; Bind smex to C-x C-m and (typo-friendly) C-c C-m.
(global-set-key (kbd "C-x C-m") 'smex)
(global-set-key (kbd "C-c C-m") 'smex)

;; M-X limits to commands relevant to the active major mode.
(global-set-key (kbd "M-X") 'smex-major-mode-commands)

;; M-x remains bound to the normal execute-extended-command.

(provide 'setup-smex)
