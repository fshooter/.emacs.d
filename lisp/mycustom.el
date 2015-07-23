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

;; code style
(require 'mycstyle)
(add-hook 'c-mode-common-hook 'my-set-c-style)

;; 配置键盘绑定
(define-key global-map (kbd "C-c SPC") 'ace-jump-mode)
(define-key global-map (kbd "C-x o") 'ace-window)
(define-key global-map (kbd "C-c g") 'magit-status)
(define-key global-map (kbd "C-=") 'er/expand-region)
(define-key global-map (kbd "C-c s") 'helm-do-ag)

(provide 'mycustom)
