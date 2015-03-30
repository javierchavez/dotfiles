(require-package 'undo-tree) 

;;(global-undo-tree-mode)
;; only enable when programming
(add-hook 'prog-mode-hook 'undo-tree-mode)

(provide 'init-undo-tree)
