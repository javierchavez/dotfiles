(require-package 'anaconda-mode)

;; https://github.com/proofit404/anaconda-mode 

(add-hook 'python-mode-hook 'anaconda-mode)
(add-hook 'python-mode-hook 'eldoc-mode)


;; use f to open with finder
(eval-after-load 'anaconda-mode
  '(progn
     ;; prevent global keysettings being overwritten
     (define-key anaconda-mode-map (kbd "M-.") 'anaconda-mode-goto-definitions)
     ))
(provide 'init-anaconda-mode)

