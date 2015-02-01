(require 'ido)

(ido-mode t)
(setq ido-enable-prefix nil
      ido-enable-flex-matching t)
(ido-everywhere t)

;; Use flx-ido for better flex matching between words.
(require 'flx-ido)
(flx-ido-mode t)

;; Disable ido faces to see flx highlights.
(setq ido-use-faces nil)

(provide 'setup-ido)
