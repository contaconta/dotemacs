(custom-set-variables
 '(default-frame-alist (append '((alpha . 90)) default-frame-alist)))

(defun what-face (pos)
  (interactive "d")
  (let ((face (or (get-char-property (point) 'read-face-name)
                  (get-char-property (point) 'face))))
    (if face (message "Face: %s" face) (message "No face at %d" pos))))

; (when (package-installed-p 'solarized-theme)
;      (load-theme 'solarized-dark t))

(when (package-installed-p 'zenburn-theme)
     (load-theme 'zenburn t))


(add-hook 'window-setup-hook
          (lambda ()

            (global-linum-mode)
            ;(global-hl-line-mode 1)
            (hlinum-activate)

            (global-yascroll-bar-mode 1)
            (custom-set-variables
             '(yascroll:delay-to-hide nil))

            ; (custom-set-faces
            ;  '(flymake-errline ((t (:underline (:color "red" :style wave)))))
            ;  '(flymake-warnline ((t (:underline (:color "yellow"))))))

            ; (when (require 'volatile-highlights nil t)
            ;   (volatile-highlights-mode t)
            ;   (custom-set-faces
            ;    '(vhl/default-face ((t (:background "dark slate gray"))))))

            (line-number-mode 1)
            ;; 行番号表示
            (set-face-attribute 'linum nil
                   :foreground "#800"
                   :height 0.9)

            ;; 行番号フォーマット
            (setq linum-format "%4d| ")

            (column-number-mode 1)
            (setq frame-title-format '("%f"))

            (show-paren-mode 1)
            (set-face-attribute 'show-paren-match-face nil :underline "red")
            (custom-set-variables
             '(show-paren-delay 0.1))

            ; (when (require 'rainbow-delimiters nil t)
            ;   (global-rainbow-delimiters-mode))
          ))

(provide 'init-face)
