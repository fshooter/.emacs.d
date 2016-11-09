;; -*- coding: utf-8 -*-

(setq-default tab-width 4)
(setq-default indent-tabs-mode nil)
(setq-default c-basic-offset 4)
(setq c-default-style "linux"
      c-basic-offset 4)

(add-hook 'find-file-hook
          '(lambda ()
             (read-only-mode)))

(when (eq system-type 'windows-nt)
  (set-face-attribute
   'default nil :font "Consolas 13")
  (set-fontset-font t 'han (font-spec :family "Microsoft Yahei" :size 14)))

;; whitespace
(setq whitespace-style '(face lines-tail trailing empty)
      whitespace-line-column 80
	  whitespace-action '(cleanup))
(global-whitespace-mode 1)

(use-package windmove
  :bind
  (("S-<left>" . windmove-left)
   ("S-<right>" . windmove-right)
   ("S-<up>" . windmove-up)
   ("S-<down>" . windmove-down)))
  
(use-package smartparens
  :config
  (require 'smartparens-config)
  (smartparens-global-mode t))

(use-package highlight-parentheses
  :config
  (global-highlight-parentheses-mode))

(use-package undo-tree
  :init
  (global-undo-tree-mode +1))

(use-package browse-kill-ring
  :init
  (require 'browse-kill-ring))

(use-package expand-region
  :bind
  ("C-=" . er/expand-region))

(use-package highlight-thing
  :config
  (global-highlight-thing-mode))

(use-package ace-jump-mode
  :bind
  ("C-c SPC" . ace-jump-mode))

(use-package multiple-cursors
  :bind
  (("C->" . mc/mark-next-like-this)
   ("C-<" . mc/mark-previous-like-this)
   ("C-S-c C-S-c" . mc/edit-lines)))

(use-package highlight-symbol
  :bind
  ("C-<f3>" . highlight-symbol))

(use-package rainbow-delimiters
  :config
  (add-hook 'prog-mode-hook #'rainbow-delimiters-mode))

(use-package which-key
  :config
  (which-key-mode))

(use-package anzu
  :config
  (global-anzu-mode +1))

(use-package pangu-spacing
  :config
  (global-pangu-spacing-mode 1)
  (setq pangu-spacing-real-insert-separtor t))

(provide 'init-editor)
