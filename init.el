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

(defconst microsoft-c-style
  `((c-recognize-knr-p . nil)
    (c-enable-xemacs-performance-kludge-p . t) ; speed up indentation in XEmacs
    (c-basic-offset . 4)
    (indent-tabs-mode . nil)
    (c-comment-only-line-offset . 0)
    (c-hanging-braces-alist . ((defun-open after)
                               (defun-close before after)
                               (class-open after)
                               (class-close before after)
                               (inexpr-class-open after)
                               (inexpr-class-close before)
                               (namespace-open after)
                               (inline-open after)
                               (inline-close before after)
                               (block-open after)
                               (block-close . c-snug-do-while)
                               (extern-lang-open after)
                               (extern-lang-close after)
                               (statement-case-open after)
                               (substatement-open after)))
    (c-hanging-colons-alist . ((case-label)
                               (label after)
                               (access-label after)
                               (member-init-intro before)
                               (inher-intro)))
    (c-hanging-semi&comma-criteria
     . (c-semi&comma-no-newlines-for-oneline-inliners
        c-semi&comma-inside-parenlist
        c-semi&comma-no-newlines-before-nonblanks))
    (c-indent-comments-syntactically-p . t)
    (comment-column . 40)
    (c-indent-comment-alist . ((other . (space . 2))))
    (c-cleanup-list . (brace-else-brace
                       brace-elseif-brace
                       brace-catch-brace
                       empty-defun-braces
                       defun-close-semi
                       list-close-comma
                       scope-operator))
    (c-offsets-alist . ((arglist-intro . +)
                        (func-decl-cont . ++)
                        (member-init-intro . ++)
                        (inher-intro . ++)
                        (comment-intro . 0)
                        (arglist-close . c-lineup-arglist)
                        (topmost-intro . 0)
                        (block-open . 0)
                        (inline-open . 0)
                        (substatement-open . 0)
                        (statement-cont
                         .
                         (,(when (fboundp 'c-no-indent-after-java-annotations)
                             'c-no-indent-after-java-annotations)
                          ,(when (fboundp 'c-lineup-assignments)
                             'c-lineup-assignments)
                          ++))
                        (label . /)
                        (case-label . 0)
                        (statement-case-open . 0)
                        (statement-case-intro . +) ; case w/o {
                        (access-label . /)
                        (innamespace . 0))))
  "Microsoft C/C++ Programming Style.")

(defun microsoft-set-c-style ()
  "Set the current buffer's c-style to Microsoft C/C++ Programming
  Style. Meant to be added to `c-mode-common-hook'."
  (interactive)
  (make-local-variable 'c-tab-always-indent)
  (setq c-tab-always-indent t)
  (c-add-style "Microsoft" microsoft-c-style t))

(add-hook 'c-mode-common-hook 'google-set-c-style)
(add-hook 'c-mode-common-hook 'google-make-newline-indent)

;; white space mode options
(setq whitespace-style '(face lines-tail trailing)
      whitespace-line-column 80)
(global-whitespace-mode 1)

(custom-set-variables
 '(helm-ag-base-command "pt /nocolor /nogroup /i")
 '(helm-ag-insert-at-point 'symbol))
(define-key global-map (kbd "C-c s") 'helm-do-ag)
