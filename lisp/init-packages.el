;; -*- coding: utf-8 -*-

(require 'package)

(setq my/is-packages-refreshed nil)

(defun my/install-package (package)
  (unless (package-installed-p package)
    (if (not my/is-packages-refreshed)
		(progn
		  (package-refresh-contents)
		  (setq my/is-packages-refreshed t)))
    (package-install package)))

(defun my/install-packages (packages)
  (if packages
      (progn
		(my/install-package (car packages))
		(my/install-packages (cdr packages)))))

(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(my/install-packages '(use-package
						ample-theme
						projectile
						smartparens
						undo-tree
						expand-region
						ace-jump-mode
						ace-window
						company
						magit
						multiple-cursors
						highlight-symbol
						highlight-parentheses
						which-key
						helm
						helm-projectile
						helm-ag
						swiper-helm
						anzu))

(provide 'init-packages)
