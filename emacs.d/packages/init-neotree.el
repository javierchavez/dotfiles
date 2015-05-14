(require-package 'neotree)


(custom-set-faces
 '(neo-button-face ((t (:foreground "cyan" :underline nil))))
 '(neo-header-face ((t :inherit shadow)))
 '(neo-dir-link-face ((t (:foreground "SeaGreen2" :weight light))))
 '(neo-file-link-face ((t (:foreground "yellow"))))
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
