(require 'projectile nil t)
(eval-after-load 'projectile
  '(progn
       (projectile-global-mode)
       (setq projectile-require-project-root nil)))

(provide 'init-projectile)
