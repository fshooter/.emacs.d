(add-to-list 'load-path "~/.emacs.d/lisp")

(require 'package)

(setq oh-packages
  '(monokai-theme
    helm
    projectile
    helm-projectile
	helm-ag
    smartparens
    undo-tree
    expand-region
    anzu
    ace-jump-mode
    ace-window
    company
    magit
    google-c-style
    move-text))

(setq package-refreshed nil)

(defun oh-install-package (package)
  "Install PACKAGE unless already installed."
  (unless (package-installed-p package)
    (if (not package-refreshed)
	(progn
	  (package-refresh-contents)
	  (setq package-refreshed t)))
    (package-install package)))

(defun oh-install-packages (packages)
  (if packages
      (progn
       (oh-install-package (car packages))
       (oh-install-packages (cdr packages)))))

(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)
(package-initialize)
(oh-install-packages oh-packages)

;; 禁用菜单栏/工具栏/滚动条
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

;; 加载主题和字体
(load-theme 'monokai t)
(set-face-attribute
 'default nil :font "Consolas 11")
(set-fontset-font t 'han (font-spec :family "Microsoft Yahei" :size 14))

;; 配置插件
(helm-mode 1)
(projectile-global-mode)
(helm-projectile-on)
(setq projectile-indexing-method 'alien)
(add-hook 'after-init-hook 'global-company-mode)
(global-anzu-mode +1)
(require 'smartparens-config)
(smartparens-global-mode t)
(global-undo-tree-mode +1)
(setq-default tab-width 4)
(move-text-default-bindings)

(defun org-mode-set-font-size ()
  (set-fontset-font t 'han (font-spec :family "Microsoft Yahei" :size 16)))
(add-hook 'org-mode-hook 'org-mode-set-font-size)

;; 配置键盘绑定
(define-key global-map (kbd "C-c SPC") 'ace-jump-mode)
(define-key global-map (kbd "C-x o") 'ace-window)
(define-key global-map (kbd "C-c g") 'magit-status)
(define-key global-map (kbd "C-=") 'er/expand-region)

;; git相关配置
(add-to-list 'process-coding-system-alist '("[gG][iI][tT]" utf-8 . utf-8))
(add-to-list 'file-coding-system-alist '(".*\\.git\\.*" utf-8 . utf-8))

(require 'mycstyle)
(add-hook 'c-mode-common-hook 'my-set-c-style)

(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))

;; white space mode options
(setq whitespace-style '(face lines-tail trailing empty)
      whitespace-line-column 80
	  whitespace-action '(cleanup))
(global-whitespace-mode 1)

(custom-set-variables
 '(helm-ag-base-command "pt /nocolor /nogroup /i")
 '(helm-ag-insert-at-point 'symbol))
(define-key global-map (kbd "C-c s") 'helm-do-ag)
