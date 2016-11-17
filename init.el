;; -*- coding: utf-8 -*-

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(add-to-list 'load-path "~/.emacs.d/lisp")

(require 'init-packages)
(require 'init-theme)
(require 'init-editor)
(require 'init-projectile)
(require 'init-helm)
(require 'init-company)
(require 'init-yasnippet)
(require 'init-magit)
(require 'init-dired+)
(require 'init-c++)
(require 'init-markdown)

(when (eq system-type 'windows-nt)
  (require 'init-windows))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (dired+ pangu-spacing browse-kill-ring powerline ag which-key highlight-parentheses yasnippet use-package undo-tree smartparens rainbow-delimiters python-mode multiple-cursors markdown-mode magit js2-mode highlight-thing highlight-symbol helm-projectile helm-ag expand-region company anzu ample-theme ace-jump-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
