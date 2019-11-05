(require 'neotree)
(global-set-key [f8] 'neotree-toggle)

;; Hook into projectile.
(setq projectile-switch-project-action 'neotree-projectile-action)

;; Don't force neotree window into a fixed size
(setq neo-window-fixed-size nil)

;; Remember neotree window size between close / open
;; https://github.com/jaypei/emacs-neotree/issues/262
 (eval-after-load "neotree"
   '(add-to-list 'window-size-change-functions
                 (lambda (frame)
                   (let ((neo-window (neo-global--get-window)))
                     (unless (null neo-window)
                       (setq neo-window-width (window-width neo-window)))))))

(provide 'setup-neotree)
