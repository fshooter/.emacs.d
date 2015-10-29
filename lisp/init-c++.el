(defun do-init-c++ ()
  (use-package helm-gtags
	:bind
	(("M-." . helm-gtags-dwim)
	 ("M-," . helm-gtags-pop-stack)
	 ("C-c t s" . helm-gtags-select)
	 ("C-c t r" . helm-gtags-find-rtag)
	 ("C-c t u" . helm-gtags-update-tags))))

(add-hook 'c++-mode-hook 'do-init-c++)

(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))

(provide 'init-c++)
