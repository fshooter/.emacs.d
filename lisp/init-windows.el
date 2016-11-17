;; -*- coding: utf-8 -*-

(setenv "PATH"
        (concat
         "c:/msys64/mingw64/bin" ";"
         "c:/msys64/usr/bin" ";"
         (getenv "PATH")))

(modify-coding-system-alist 'file "\\.git" 'utf-8)

(set-face-attribute 'default nil :font "Consolas 12")
(set-fontset-font t 'han (font-spec :family "Microsoft Yahei" :size 12))

(provide 'init-windows)
