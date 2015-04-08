(require-package 'exec-path-from-shell)

(exec-path-from-shell-initialize)

(exec-path-from-shell-setenv "PYTHONSTARTUP" "")
(exec-path-from-shell-setenv "PYLINTRC" "")



(provide 'init-exec-path)
