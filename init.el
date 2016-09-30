;; -*- coding: utf-8 -*-

(add-to-list 'load-path "~/.emacs.d/lisp")

(require 'init-packages)
(require 'init-theme)
(require 'init-editor)
(require 'init-company)
(require 'init-magit)
(require 'init-projectile)
(require 'init-yasnippet)
(require 'init-c++)
(require 'init-markdown)
(require 'init-js)
(require 'init-py)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
	(ag counsel swiper which-key highlight-parentheses yasnippet use-package undo-tree spaceline smartparens rainbow-delimiters python-mode multiple-cursors move-text markdown-mode magit js2-mode highlight-thing highlight-symbol helm-projectile helm-ls-git helm-git-grep helm-ag expand-region company beacon auto-complete anzu ample-theme ace-window ace-jump-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
