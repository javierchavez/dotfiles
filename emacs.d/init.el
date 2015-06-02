
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(add-to-list 'load-path (expand-file-name "packages" user-emacs-directory))
(add-to-list 'load-path (expand-file-name "config" user-emacs-directory))

;; These are main parts of emacs loading
(require 'init-main) ;; loads 1st
(require 'init-uxui) ;; loads 2nd


;;;;;;;;;;;;;;;;;;;;;; scheme ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(setq scheme-program-name "racket") 


;;;;; REMOTE cs
(defun unm-connect-remote ()
  (interactive)
  (dired "/ssh:javierc@moons.cs.unm.edu:/nfs/student/j/javierc/Documents/"))
(defun javierachavez ()
  (interactive)
  (dired "/ssh:javierac@javierachavez.com:/home2/javierac"))



(defun open-finder ()
  (interactive)
  (shell-command "open ."))


;; You can remove stuff you dont like.

;; SVN
(require 'init-dsvn)
;; Python docs
(require 'init-anaconda-mode)
;; News reader
(require 'init-elfeed)
;; Import the $PATH (only needed for GUI)
(require 'init-exec-path)
;; Syntax checkers
(require 'init-flycheck)
(require 'init-flycheck-haskell)
(require 'init-flymake-easy)
(require 'init-flymake-jslint)
(require 'init-flymake-ruby)
(require 'init-haskell-mode)
;; haskell indent
(require 'init-hi2)
;; highlight line
(require 'init-hlinum)
;; javascript stuff
(require 'init-js3-mode)
(require 'init-json-mode)
(require 'init-json-reformat)
(require 'init-json-snatcher)
;; git integration
(require 'init-magit)
;; java
(require 'init-malabar-mode)
;; markdown
(require 'init-markdown-mode)
;; paren marking
(require 'init-mic-paren)
;; html and js support 
(require 'init-web-mode)
;; multi cursor like sublime
(require 'init-multiple-cursors)
;; file browsers on side
(require 'init-neotree)
;; dependency
(require 'init-prosjekt)
;; tab with autocomplete
(require 'init-smart-tab)
;; undo done better
(require 'init-undo-tree)
;; python venv
(require 'init-virtualenvwrapper)


;; require python-mode
(require 'init-python-mode)


;; require pylint
(require 'init-pylint)
;; require color-theme-approximate
(require 'init-color-theme-approximate)
