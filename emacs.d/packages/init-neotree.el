(require-package 'neotree)
(setq neo-smart-open t)
(neotree-toggle)


(custom-set-faces
 '(neo-file-link-face ((t :inherit default)))
 '(neo-header-face ((t :inherit shadow)))
 '(neo-root-dir-face ((t :inherit link-visited :underline nil))))

;; use f to open with finder
(eval-after-load 'neotree
                 '(progn
                   ;; prevent global keysettings being overwritten
                   (define-key neotree-mode-map (kbd "f") 'open-finder)
                   
                         ))

(provide 'init-neotree)
