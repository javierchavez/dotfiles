(require-package 'neotree)


(custom-set-faces
 '(neo-file-link-face ((t :inherit default)))
 '(neo-header-face ((t :inherit shadow)))
 '(neo-root-dir-face ((t :inherit link-visited :underline nil))))


(setq neo-show-header nil)          ;; Hide help line
(setq neo-theme 'nerd)
(setq neo-banner-message nil)


;; use f to open with finder
(eval-after-load 'neotree
                 '(progn
                   ;; prevent global keysettings being overwritten
                   (define-key neotree-mode-map (kbd "f") 'open-finder)
                   
                         ))
(setq neo-smart-open t)
(neotree-toggle)

(provide 'init-neotree)
