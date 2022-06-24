;; Re-bind kill keys.
(global-set-key "\C-w" 'backward-kill-word)
(global-set-key "\C-x\C-k" 'kill-region)
(global-set-key "\C-c\C-k" 'kill-region)

;; Reasonable window resizing.
(global-set-key (kbd "S-C-<left>") 'shrink-window-horizontally)
(global-set-key (kbd "S-C-<right>") 'enlarge-window-horizontally)
(global-set-key (kbd "S-C-<down>") 'shrink-window)
(global-set-key (kbd "S-C-<up>") 'enlarge-window)

;; Use windmove keybindings when possible.
(when (fboundp 'windmove-default-keybindings)
  (windmove-default-keybindings))

;; Use F5 to call current macro.
(global-set-key [f5] 'call-last-kbd-macro)

;; Goto line number.
(global-set-key (kbd "C-l") 'goto-line)

; Use ibuffer over standard buffer menu.
(global-set-key (kbd "C-x C-b") 'ibuffer)

;; Duplicate line.
(global-set-key "\C-c\C-d" "\C-a\C- \C-n\M-w\C-y")

;; Expand region.
(global-set-key (kbd "C-=") 'er/expand-region)
(global-set-key (kbd "C-+") 'er/contract-region)

;; Enter TeX input mode
(defun set-TeX-input-method ()
  (interactive)
  (set-input-method "TeX")
  )
(global-set-key (kbd "M-T") 'set-TeX-input-method)

(provide 'key-bindings)
