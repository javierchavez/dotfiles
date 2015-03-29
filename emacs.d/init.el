(add-to-list 'load-path (expand-file-name "packages" user-emacs-directory))
(add-to-list 'load-path (expand-file-name "config" user-emacs-directory))

(require 'init-main)
(require 'init-uxui)
(require 'init-dsvn)
(require 'init-elfeed)
(require 'init-flycheck)
(require 'init-flycheck-haskell)
(require 'init-flymake-easy)
(require 'init-flymake-jslint)
(require 'init-flymake-ruby)
(require 'init-haskell-mode)
(require 'init-hi2)
(require 'init-hlinum)
(require 'init-js3-mode)
(require 'init-json-mode)
(require 'init-json-reformat)
(require 'init-json-snatcher)
(require 'init-magit)
(require 'init-malabar-mode)
(require 'init-markdown-mode)
(require 'init-mic-paren)
(require 'init-multi-web-mode)
(require 'init-multiple-cursors)
(require 'init-neotree)
(require 'init-prosjekt)
(require 'init-smart-tab)
(require 'init-undo-tree)
(require 'init-virtualenvwrapper)


;;;;;;;;;;;;;;;;;;;;;; scheme ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(setq scheme-program-name "/Library/Racket/bin/racket") 


;;;;; REMOTE cs
(defun unm-connect-remote ()
  (interactive)
  (dired "/ssh:javierc@moons.cs.unm.edu:/nfs/student/j/javierc/Documents/"))





