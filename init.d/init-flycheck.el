(when (require 'flycheck nil t)
  (global-flycheck-mode 1)
  (custom-set-variables
   '(flycheck-idle-change-delay 0.5)
   '(flycheck-disabled-checkers '(emacs-lisp-checkdoc)))
  (when (require 'flycheck-tip nil t)
    (custom-set-variables
     '(flycheck-tip-avoid-show-func nil)
     '(flycheck-display-errors-function 'flycheck-tip-display-current-line-error-message))))

(provide 'init-flycheck)
