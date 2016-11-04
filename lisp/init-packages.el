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
  (dolist (pkg packages)
    (my/install-package pkg)))

(defconst my/packages '(use-package
                         ample-theme
                         powerline
                         projectile
                         smartparens
                         undo-tree
                         browse-kill-ring
                         expand-region
                         ace-jump-mode
                         pangu-spacing
                         company
                         magit
                         multiple-cursors
                         highlight-symbol
                         highlight-parentheses
                         which-key
                         helm
                         helm-projectile
                         helm-ag
                         anzu
                         highlight-thing
                         dired+))

(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(my/install-packages my/packages)

(provide 'init-packages)
