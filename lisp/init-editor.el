;; -*- coding: utf-8 -*-

(setq-default tab-width 4)

;; whitespace
(setq whitespace-style '(face lines-tail trailing empty)
      whitespace-line-column 80
	  whitespace-action '(cleanup))
(global-whitespace-mode 1)
(put 'erase-buffer 'disabled nil)

;; smartparens
(use-package smartparens
  :config
  (require 'smartparens-config)
  (smartparens-global-mode t))

;; undo-tree
(use-package undo-tree
  :init
  (global-undo-tree-mode +1))

;; expand-region
(use-package expand-region
  :bind
  ("C-=" . er/expand-region))

;; anzu
(use-package anzu
  :init
  (global-anzu-mode +1))

;; ace-jump-mode
(use-package ace-jump-mode
  :bind
  ("C-." . ace-jump-mode))

;; ace-window
(use-package ace-window
  :bind
  ("C-x o" . ace-window))

;; multiple-cursors
(use-package multiple-cursors
  :bind
  (("C->" . mc/mark-next-like-this)
   ("C-<" . mc/mark-previous-like-this)
   ("C-S-c C-S-c" . mc/edit-lines)))

;; highlight-thing
(use-package highlight-thing
  :config
  (global-highlight-thing-mode))

;; highlight-symbol
(use-package highlight-symbol
  :bind
  ("C-<f3>" . highlight-symbol))

;; beacon-mode
(use-package beacon
  :config
  (beacon-mode 1)
  (setq beacon-color "#ffa500"))

;; spaceline
(use-package spaceline
  :config
  (require 'spaceline-config)
  (spaceline-emacs-theme)
  (spaceline-toggle-minor-modes-off))

(provide 'init-editor)
