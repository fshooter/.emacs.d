(use-package magit
  :bind
  ("C-c g" . magit-status))

;; git相关配置
(add-to-list 'process-coding-system-alist '(".*\\Git\\.*" utf-8 . utf-8))
(add-to-list 'file-coding-system-alist '(".*\\.git\\.*" utf-8 . utf-8))

(provide 'init-magit)
