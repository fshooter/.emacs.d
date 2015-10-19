;; -*- coding: utf-8 -*-

;; 禁用菜单栏/工具栏/滚动条
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

;; 设置字体
(set-face-attribute
 'default nil :font "Consolas 11")
(set-fontset-font t 'han (font-spec :family "Microsoft Yahei" :size 14))

(defun org-mode-set-font-size ()
  (set-fontset-font t 'han (font-spec :family "Microsoft Yahei" :size 16)))
(add-hook 'org-mode-hook 'org-mode-set-font-size)

;; 加载主题
(use-package ample-theme
  :config
  (load-theme 'ample t))

(provide 'init-theme)
