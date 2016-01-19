;; -*- coding: utf-8 -*-

(require 'package)

(setq oh-packages
  '(ample-theme
    helm
    projectile
    helm-projectile
	helm-ag
    smartparens
    undo-tree
    expand-region
    anzu
    ace-jump-mode
    ace-window
    company
    magit
    move-text
	powerline
	multiple-cursors
	highlight-thing))

(setq package-refreshed nil)

(defun oh-install-package (package)
  "Install PACKAGE unless already installed."
  (unless (package-installed-p package)
    (if (not package-refreshed)
	(progn
	  (package-refresh-contents)
	  (setq package-refreshed t)))
    (package-install package)))

(defun oh-install-packages (packages)
  ""Install PACKAGES unless already installed.""
  (if packages
      (progn
       (oh-install-package (car packages))
       (oh-install-packages (cdr packages)))))

(add-to-list 'package-archives
          '("popkit" . "http://elpa.popkit.org/packages/"))
(package-initialize)

(provide 'init-elpa)
