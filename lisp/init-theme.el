;; -*- coding: utf-8 -*-

(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

(use-package ample-theme
  :config
  (load-theme 'ample t))

(use-package powerline
  :config
  (powerline-default-theme))

(provide 'init-theme)
