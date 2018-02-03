(require 'auto-complete-config)
(require 'ido)

(setq show-paren-style 'expression)
(show-paren-mode 1)

(ido-mode t)
(setq ido-enable-flex-matching t)

;; Hide toolbars
(tool-bar-mode -1)
(menu-bar-mode -1)

;; Disable start screen
(setq inhibit-startup-screen t)

;; Disabling autosave
(setq make-backup-files nil)
(setq auto-save-list-file-name nil)
(setq auto-save-default nil)

;; Leftbar with files
(setq speedbar-use-images nil)

;; Autocomplete
(ac-config-default)
(add-to-list 'ac-dictionary-directories "/home/nihirash/ac-dict/")

(rainbow-delimiters-mode)
(linum-mode)
