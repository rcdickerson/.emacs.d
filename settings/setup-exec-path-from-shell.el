(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))

(provide 'setup-exec-path-from-shell)
