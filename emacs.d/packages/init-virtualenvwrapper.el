(require-package 'virtualenvwrapper) 

(venv-initialize-interactive-shells) ;; if you want interactive shell support
(venv-initialize-eshell) ;; if you want eshell support
(setq venv-location "/Users/javierc/Documents/virtualenvs/")

(provide 'init-virtualenvwrapper)
