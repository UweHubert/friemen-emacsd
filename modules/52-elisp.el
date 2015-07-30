(defvar elisp-packages '(
	company
	nrepl-eval-sexp-fu
	paredit
	popup
	rainbow-delimiters
	smartparens))

(dolist (p elisp-packages)
  (require-package p))


(defun my-elisp-mode-hook ()
  (define-key emacs-lisp-mode-map (kbd "C-c C-c") 'eval-defun))


(add-hook 'emacs-lisp-mode-hook 'paredit-mode)
(add-hook 'emacs-lisp-mode-hook 'rainbow-delimiters-mode)
(add-hook 'emacs-lisp-mode-hook 'turn-on-eldoc-mode)
(add-hook 'emacs-lisp-mode-hook 'company-mode)
(add-hook 'emacs-lisp-mode-hook 'my-elisp-mode-hook)
