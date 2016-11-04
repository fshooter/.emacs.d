;; -*- coding: utf-8 -*-

(use-package dired+
  :init
  (setq diredp-hide-details-initially-flag nil)
  :config
  (toggle-diredp-find-file-reuse-dir 1))

(provide 'init-dired+)
