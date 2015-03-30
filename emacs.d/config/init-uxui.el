(require-package 'monokai-theme)
(load-theme 'monokai t)

(global-font-lock-mode t)
(global-set-key "\C-x\C-k" 'kill-buffer-and-window)
(global-set-key "\C-xs" 'save-buffer)
(global-set-key "\C-xv" 'quoted-insert)
(global-set-key "\C-xg" 'goto-line)
(global-set-key "\C-xf" 'search-forward)
(global-set-key "\C-xc" 'compile)
(global-set-key "\C-xt" 'text-mode);
(global-set-key "\C-xr" 'replace-string);
(global-set-key "\C-xa" 'repeat-complex-command);
(global-set-key "\C-xm" 'manual-entry);
(global-set-key "\C-xw" 'what-line);
(global-set-key "\C-x\C-u" 'shell);
(global-set-key "\C-x0" 'overwrite-mode);
(global-set-key "\C-x\C-r" 'toggle-read-only);
(global-set-key "\C-t" 'kill-word);
(global-set-key "\C-p" 'previous-line);
(global-set-key "\C-u" 'backward-word);
(global-set-key "\C-o" 'forward-word);
(global-set-key "\C-h" 'backward-delete-char-untabify);
(global-set-key "\C-x\C-m" 'not-modified);
(setq make-backup-files 'nil);
(setq default-major-mode 'text-mode)
(setq text-mode-hook 'turn-on-auto-fill)
(setq auto-mode-alist (cons '("\\.cxx$" . c++-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.hpp$" . c++-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.tex$" . latex-mode) auto-mode-alist))



(setq visible-bell nil
      ring-bell-function 'ignore
      inhibit-splash-screen t
      inhibit-startup-message t
      initial-scratch-message nil)

;; use Shift+arrow_keys to move cursor around split panes
(windmove-default-keybindings)

;; only show linum when programming
(add-hook 'prog-mode-hook 'linum-mode)
(setq linum-format "%3d ")

(scroll-bar-mode -1)

(add-hook 'shell-mode-hook 'buffer-disable-undo t)

;; Enable y/n answers.
(fset 'yes-or-no-p 'y-or-n-p)

;; Allow pasting selection outside of Emacs.
(setq x-select-enable-clipboard t)

;; Frame title formatting.
(setq-default frame-title-format
              '((:eval (if (buffer-file-name)
                           (abbreviate-file-name (buffer-file-name))
                         "%b"))))


;; GC optimisation.
;; Increases garbage collection threshold to 50mb (from 0.76mb)
(setq gc-cons-threshold 50000000)

(provide 'init-uxui)
