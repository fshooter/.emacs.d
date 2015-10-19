;; -*- coding: utf-8 -*-

(use-package helm
  :config
  (helm-mode 1))

(use-package projectile
  :config
  (setq projectile-indexing-method 'alien)
  (projectile-global-mode))

(use-package helm-projectile
  :config
  (helm-projectile-on))

(use-package helm-ag)

(provide 'init-helm-projectile)
