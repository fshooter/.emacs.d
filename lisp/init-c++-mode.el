(defun do-init-c++ ()
  (local-set-key (kbd "M-.") 'helm-gtags-dwim)
  (local-set-key (kbd "M-,") 'helm-gtags-pop-stack)
  (local-set-key (kbd "C-c g s") 'helm-gtags-select)
  (local-set-key (kbd "C-c g r") 'helm-gtags-find-rtag)
  (local-set-key (kbd "C-c g u") 'helm-gtags-update-tags))

(use-package helm-gtags)

(add-hook 'c++-mode-hook 'do-init-c++)

(provide 'init-c++-mode)
