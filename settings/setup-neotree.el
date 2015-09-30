(require 'neotree)
(global-set-key [f8] 'neotree-toggle)

;; Hook into projectile.
(setq projectile-switch-project-action 'neotree-projectile-action)

(provide 'setup-neotree)
