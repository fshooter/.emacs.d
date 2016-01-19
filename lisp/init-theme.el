;; -*- coding: utf-8 -*-

;; 禁用菜单栏/工具栏/滚动条
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

;; 加载主题
(use-package ample-theme
  :config
  (load-theme 'ample t))

(provide 'init-theme)
