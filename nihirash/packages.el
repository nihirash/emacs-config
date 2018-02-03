(defvar required-packages
  '(paredit clojure-mode clojure-mode-extra-font-locking cider ido-ubiquitous smex rainbow-delimiters
    magit auto-complete tangotango-theme projectile))

(dolist (p required-packages)
  (when (not (package-installed-p p))
    (package-install p)))
