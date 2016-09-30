;; -*- coding: utf-8 -*-

(setq-default tab-width 4)
(setq-default c-basic-offset 4)

;; 设置字体
(set-face-attribute
 'default nil :font "Consolas 13")
(set-fontset-font t 'han (font-spec :family "Microsoft Yahei" :size 14))

;; whitespace
(setq whitespace-style '(face lines-tail trailing empty)
      whitespace-line-column 80
	  whitespace-action '(cleanup))
(global-whitespace-mode 1)

;; smartparens
(use-package smartparens
  :config
  (require 'smartparens-config)
  (smartparens-global-mode t))

(use-package highlight-parentheses
  :config
  (global-highlight-parentheses-mode))

;; undo-tree
(use-package undo-tree
  :init
  (global-undo-tree-mode +1))

;; expand-region
(use-package expand-region
  :bind
  ("C-=" . er/expand-region))

;; ace-jump-mode
(use-package ace-jump-mode
  :bind
  ("C-c SPC" . ace-jump-mode))

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

;; highlight-symbol
(use-package highlight-symbol
  :bind
  ("C-<f3>" . highlight-symbol))

;; rainbow-delimiters
(use-package rainbow-delimiters
  :config
  (add-hook 'prog-mode-hook #'rainbow-delimiters-mode))

(use-package which-key
  :config
  (which-key-mode))

(use-package anzu
  :config
  (global-anzu-mode +1))

(provide 'init-editor)
