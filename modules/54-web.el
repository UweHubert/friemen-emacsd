(defvar web-packages '(
        js2-mode
	web-mode))

(dolist (p web-packages)
  (require-package p))

;; web mode
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(global-set-key (kbd "C-7") 'web-mode-element-close)

(defun my-web-mode-hook ()  
  (setq web-mode-indent-style 2)
  (setq web-mode-markup-indent-offset 2))

(add-hook 'web-mode-hook 'my-web-mode-hook)


;; JavaScript
(require 'js2-mode)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))
(add-hook 'js2-mode-hook 'flycheck-mode)

