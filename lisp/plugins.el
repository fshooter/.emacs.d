;; -*- coding: utf-8 -*-

(require 'package)

(setq oh-packages
  '(ample-theme
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
    move-text
	powerline))

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

;; 加载主题和字体
(load-theme 'ample t)

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

;; white space mode options
(setq whitespace-style '(face lines-tail trailing empty)
      whitespace-line-column 80
	  whitespace-action '(cleanup))
(global-whitespace-mode 1)
(put 'erase-buffer 'disabled nil)

(provide 'plugins)
