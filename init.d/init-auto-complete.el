(when (require 'auto-complete-config nil t)
  (ac-config-default)
  (setq
   ac-delay 0.1
   ac-auto-show-menu 0.2
   ac-use-menu-map t)

  (define-key ac-menu-map (kbd "C-n") 'ac-next)
  (define-key ac-menu-map (kbd "C-p") 'ac-previous)
  (define-key ac-mode-map (kbd "M-/") 'auto-complete))
  
  (setq-default ac-sources
                '(ac-source-abbrev
                  ac-source-dictionary
                  ac-source-words-in-same-mode-buffers))

  ;; (when (require 'auto-complete-clang-async nil t)
  ;;   (add-hook 'c-mode-common-hook
  ;;             (lambda ()
  ;;               (setq ac-sources
  ;;                     (append '(ac-source-clang-async) ac-sources))
  ;;               (ac-clang-launch-completion-process))))

  ;; (when (require 'auto-complete-clang nil t)
  ;;   (add-hook 'c-mode-common-hook
  ;;             (lambda ()
  ;;               (setq ac-sources
  ;;                     (append '(ac-source-clang ac-source-yasnippet) ac-sources)))))

  ;; (add-hook 'css-mode-hook
  ;;           (lambda ()
  ;;             (setq ac-sources
  ;;                   (append '(ac-source-css-property) ac-sources)))))

(provide 'init-auto-complete)
