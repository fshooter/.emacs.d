;; -*- coding: utf-8 -*-

(setenv "PATH"
        (concat
         "c:/msys64/mingw64/bin" ";"
         "c:/msys64/usr/bin" ";"
         (getenv "PATH")))

(setq exec-path (append exec-path '("c:/msys64/mingw64/bin"
                                    "c:/msys64/usr/bin")))

(modify-coding-system-alist 'file "\\.git" 'utf-8)

(set-face-attribute 'default nil :font "Consolas 11")
(set-fontset-font t 'han (font-spec :family "Microsoft Yahei" :size 11))

(provide 'init-windows)
