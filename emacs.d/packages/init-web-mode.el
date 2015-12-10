(require-package 'web-mode) 

(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))

(setq web-mode-engines-alist
      '(("django" . "\\.html\\'")))


(setq web-mode-extra-snippets
      '(("erb" . (("eq" . ("<%= | %>"))
                  ("t"  . ("<%= t(|) %>"))
                  ("emp"  . ("<% | %>"))
                  ))
        ("django" . (("a" . ("{% " . " %}"))
                     ("%" . ("{% " . " %}"))
                     ))
        ))

(defun custom-web-mode-hook ()
  "Hooks for Web mode."
  (setq web-mode-code-indent-offset 4)
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-css-indent-offset 2)
  (setq web-mode-enable-engine-detection t)
  (setq web-mode-enable-auto-pairing t)
  ;; (setq web-mode-enable-current-element-highlight t)
  )


;; (custom-set-faces
;;  '(web-mode-html-tag-bracket-face ((t (:foreground "SteelBlue1"))))
;;  '(web-mode-html-tag-face ((t (:foreground "DarkOrange1")))))

(add-hook 'web-mode-hook 'custom-web-mode-hook)

(provide 'init-web-mode)
