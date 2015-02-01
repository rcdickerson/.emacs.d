(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(setq org-log-done t)
(global-font-lock-mode 1)

(setq org-directory "~/Dropbox/org")
(setq org-default-notes-file (concat org-directory "/notes.org"))

(setq org-todo-keywords (quote ((sequence "TODO(t)" "|" "DONE(d)")
  (sequence "WAITING(w)" "|" "CANCELLED(c)" "|" "DELEGATED(e)"))))

(setq org-todo-keyword-faces (quote (
  ("TODO" :foreground "red" :weight bold)
  ("DONE" :foreground "forest green" :weight bold)
  ("WAITING" :foreground "orange" :weight bold)
  ("CANCELLED" :foreground "forest green" :weight bold)
  ("DELEGATED" :foreground "forest green" :weight bold))))

(setq org-use-fast-todo-selection t)

(provide 'setup-org)
