;; -*- coding: utf-8 -*-

(use-package helm
  :bind
  (("C-x C-f" . helm-find-files)
   ("M-x" . helm-M-x)
   ("C-x C-b" . helm-buffers-list)
   ("M-/" . helm-dabbrev)))

(use-package projectile
  :config
  (setq projectile-indexing-method 'alien)
  (projectile-global-mode))

(use-package helm-projectile
  :config
  (helm-projectile-on))

(use-package helm-ag)

(use-package helm-git-grep
  :bind
  ("C-c g s" . helm-git-grep))

(use-package helm-ls-git
  :bind
  ("C-c g f" . helm-ls-git-ls))

(provide 'init-helm-projectile)
