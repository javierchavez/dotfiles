(require-package 'virtualenvwrapper) 

(venv-initialize-interactive-shells) ;; if you want interactive shell support
(venv-initialize-eshell) ;; if you want eshell supportz
(setq venv-location "/Users/javier/Documents/virtualenvs/")

(provide 'init-virtualenvwrapper)
