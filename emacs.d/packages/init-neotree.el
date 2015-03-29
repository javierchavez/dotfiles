(require-package 'neotree)
(setq neo-smart-open t)
(neotree-toggle)


(custom-set-faces
 '(neo-file-link-face ((t :inherit default)))
 '(neo-header-face ((t :inherit shadow)))
 '(neo-root-dir-face ((t :inherit link-visited :underline nil))))



(provide 'init-neotree)
