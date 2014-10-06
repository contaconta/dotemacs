(require 'package)
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))
(package-initialize)

(require 'cl)

(defvar installing-package-list
  '(auto-complete
    auto-complete-clang
    auto-async-byte-compile
    flycheck
    markdown-mode
    helm
    undo-tree
    undohist
    volatile-highlights
    ;solarized-theme
    zenburn-theme
    hlinum
    yascroll
    ))

(let ((not-installed (loop for x in installing-package-list
                           when (not (package-installed-p x))
                           collect x)))
  (when not-installed
    (package-refresh-contents)
    (dolist (pkg not-installed)
      (package-install pkg))))

(provide 'init-packages)
