(require-package 'pylint)

;; Package config ;; 
(autoload 'pylint "pylint")
(add-hook 'python-mode-hook 'pylint-add-menu-items)
(add-hook 'python-mode-hook 'pylint-add-key-bindings)

(provide 'init-pylint)
