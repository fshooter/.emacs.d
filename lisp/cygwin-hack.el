;; -*- coding: utf-8 -*-
;; 用于cygwin的一系列hack

;; ediff配置
(setq ediff-coding-system-for-read 'utf-8)
(setq ediff-diff-ok-lines-regexp
      (concat
       "^\\("
       "[0-9,]+[acd][0-9,]+\C-m?$"
       "\\|[<>] "
       "\\|---"
       "\\|.*Warning *:"
       "\\|.*No +newline"
       "\\|.*missing +newline"
       "\\|.*文件尾没有.*"
       "\\|^\C-m?$"
       "\\)"))

(provide 'cygwin-hack)
