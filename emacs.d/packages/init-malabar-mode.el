(require-package 'malabar-mode) 

(add-hook 'malabar-java-mode-hook 'flycheck-mode)
(add-hook 'malabar-groovy-mode-hook 'flycheck-mode)


(provide 'init-malabar-mode)
