;; -*- coding: utf-8 -*-

(use-package helm
  :config
  (require 'helm-config)
  :bind
  (("C-x C-f" . helm-find-files)
   ("M-x" . helm-M-x)
   ("C-x b" . helm-mini)
   ("M-y" . helm-show-kill-ring)))

(use-package helm-projectile
  :config
  (helm-projectile-on))

(provide 'init-helm)
