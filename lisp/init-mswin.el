(set-default 'process-coding-system-alist
			 '(("[pP][lL][iI][nN][kK]" gbk-dos . gbk-dos)
			   ("[cC][mM][dD][pP][rR][oO][xX][yY]" gbk-dos . gbk-dos)))

;; 设置字体
(set-face-attribute
 'default nil :font "Consolas 11")
(set-fontset-font t 'han (font-spec :family "Microsoft Yahei" :size 14))

;; org mode hack
(defun org-mode-set-font-size ()
  (set-fontset-font t 'han (font-spec :family "Microsoft Yahei" :size 16)))
(add-hook 'org-mode-hook 'org-mode-set-font-siz)

(setenv "PATH"
		(concat
		 "C:/msys64/usr/bin" ";"
		 "C:/msys64/mingw64/bin" ";"
		 (getenv "PATH")))

(setq exec-path (append '("c:/msys64/usr/bin"
						  "c:/msys64/mingw64/bin")
						exec-path))

(provide 'init-mswin)
