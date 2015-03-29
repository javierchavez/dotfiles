(require-package 'flymake-ruby) 

(add-hook 'ruby-mode-hook 'flymake-ruby-load)

(provide 'init-flymake-ruby)
