(setq gc-cons-thresholdq 1073741824)

;(tool-bar-mode -1)
;(scroll-bar-mode -1)

(add-to-list 'load-path "~/.emacs.d/init.d")
(add-to-list 'load-path "~/.emacs.d/vendor.d")
(add-to-list 'load-path "~/.emacs.d/personal.d")


(require 'init-packages)
(require 'init-face)
(require 'init-global-configs)
(require 'init-helm)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector ["#073642" "#dc322f" "#859900" "#b58900" "#268bd2" "#d33682" "#2aa198" "#657b83"])
 '(compilation-message-face (quote default))
 '(cua-global-mark-cursor-color "#2aa198")
 '(cua-normal-cursor-color "#839496")
 '(cua-overwrite-cursor-color "#b58900")
 '(cua-read-only-cursor-color "#859900")
 '(custom-safe-themes (quote ("d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" default)))
 '(default-frame-alist (append (quote ((alpha . 90))) default-frame-alist))
 '(fci-rule-color "#073642")
 '(highlight-changes-colors (quote ("#d33682" "#6c71c4")))
 '(highlight-symbol-colors (--map (solarized-color-blend it "#002b36" 0.25) (quote ("#b58900" "#2aa198" "#dc322f" "#6c71c4" "#859900" "#cb4b16" "#268bd2"))))
 '(highlight-symbol-foreground-color "#93a1a1")
 '(highlight-tail-colors (quote (("#073642" . 0) ("#546E00" . 20) ("#00736F" . 30) ("#00629D" . 50) ("#7B6000" . 60) ("#8B2C02" . 70) ("#93115C" . 85) ("#073642" . 100))))
 '(magit-diff-use-overlays nil)
 '(recentf-auto-cleanup (quote never))
 '(recentf-exclude (quote (".ido.hist" ".ido.last" "xhtml-loader.rnc" "elpa/")) t)
 '(recentf-max-menu-items 10000)
 '(recentf-max-saved-items 10000000)
 '(show-paren-delay 0.1)
 '(smartrep-mode-line-active-bg (solarized-color-blend "#859900" "#073642" 0.2))
 '(tab-width 4)
 '(term-default-bg-color "#002b36")
 '(term-default-fg-color "#839496")
 '(vc-annotate-background nil)
 '(vc-annotate-color-map (quote ((20 . "#dc322f") (40 . "#ff7f00") (60 . "#ffbf00") (80 . "#b58900") (100 . "#ffff00") (120 . "#ffff00") (140 . "#ffff00") (160 . "#ffff00") (180 . "#859900") (200 . "#aaff55") (220 . "#7fff7f") (240 . "#55ffaa") (260 . "#2affd4") (280 . "#2aa198") (300 . "#00ffff") (320 . "#00ffff") (340 . "#00ffff") (360 . "#268bd2"))))
 '(vc-annotate-very-old-color nil)
 '(weechat-color-list (quote (unspecified "#002b36" "#073642" "#990A1B" "#dc322f" "#546E00" "#859900" "#7B6000" "#b58900" "#00629D" "#268bd2" "#93115C" "#d33682" "#00736F" "#2aa198" "#839496" "#657b83")))
 '(yascroll:delay-to-hide nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(flymake-errline ((t (:underline (:color "red" :style wave)))) t)
 '(flymake-warnline ((t (:underline (:color "yellow")))) t)
 '(vhl/default-face ((t (:background "dark slate gray")))))
