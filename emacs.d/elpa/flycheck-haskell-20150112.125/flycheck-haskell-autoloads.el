;;; flycheck-haskell-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (or (file-name-directory #$) (car load-path)))

;;;### (autoloads nil "flycheck-haskell" "flycheck-haskell.el" (21783
;;;;;;  29664 0 0))
;;; Generated autoloads from flycheck-haskell.el

(autoload 'flycheck-haskell-setup "flycheck-haskell" "\
Setup Haskell support for Flycheck.

If the current file is part of a Cabal project, configure
Flycheck to take the module paths of the Cabal projects into
account.

Also search for Cabal sandboxes and add them to the module search
path as well.

\(fn)" nil nil)

;;;***

;;;### (autoloads nil nil ("flycheck-haskell-pkg.el") (21783 29664
;;;;;;  550272 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; flycheck-haskell-autoloads.el ends here
