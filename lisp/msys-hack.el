;; -*- coding: utf-8 -*-
;; 用于msys2的一系列hack

;; 修改默认编码为gbk
(prefer-coding-system 'gbk-dos)
(setq default-process-coding-system '(gbk-dos . gbk-dos))
(setq default-buffer-file-coding-system 'gbk-dos)
;; msys64目录下的程序编码为utf-8
(add-to-list 'process-coding-system-alist
			 '(".*/msys64/*" utf-8-unix . utf-8-unix))

;; git相关配置
(add-to-list 'process-coding-system-alist '("[gG][iI][tT]" utf-8 . utf-8))
(add-to-list 'file-coding-system-alist '(".*\\.git\\.*" utf-8 . utf-8))

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

(provide 'msys-hack)
