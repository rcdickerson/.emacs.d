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

;; Expand region.
(global-set-key (kbd "C-=") 'er/expand-region)
(global-set-key (kbd "C-+") 'er/contract-region)

;; Crux bindings
(global-set-key [(shift return)] #'crux-smart-open-line)
(global-set-key (kbd "C-<backspace>") #'crux-kill-line-backwards)
(global-set-key (kbd "C-c d") #'crux-duplicate-current-line-or-region)
(global-set-key (kbd "C-c M-d") #'crux-duplicate-and-comment-current-line-or-region)
(global-set-key (kbd "C-c I") #'crux-find-user-init-file)
(global-set-key (kbd "M-o") #'crux-other-window-or-switch-buffer)

(provide 'key-bindings)
