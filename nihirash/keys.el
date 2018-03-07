;;
;; Nihirash's keyboard config for emacs
;; I'm using HHKB Pro2 keyboard and config made for it
;;

(cua-mode t)
;; Some helpers to set and unset keys
(defun gsk (key-to-set func)
  (global-set-key (kbd key-to-set) func))

(defun gus (key-to-unset)
  (global-unset-key (kbd key-to-unset)))

(defun mass-unset (key-list)
  (mapcar 'gus key-list))

;; freeing keys
(mass-unset '("C-k" "C-j" "C-l" "C-p" "M-C-h" "M-C-l" "M-C-j" "M-C-k"))

(gsk "M-k" 'previous-line)
(gsk "M-j" 'next-line)
(gsk "M-h" 'backward-char)
(gsk "M-l" 'forward-char)
(gsk "M-C-h" 'backward-word)
(gsk "M-C-l" 'forward-word)
(gsk "M-C-j" 'cua-scroll-up)
(gsk "M-C-k" 'cua-scroll-down)

(defun kill-current-buffer ()
  (interactive)
  (kill-buffer (current-buffer)))

;; Windowing
(gsk "<C-tab>" 'other-window)
(gsk "C-w" 'delete-window)
(gsk "M-C-w" 'kill-current-buffer)

;; Search
(gsk "C-f" 'isearch-forward)

;; More usual keybindings for open/save
(gus "C-x C-s")
(gsk "C-s" 'save-buffer)
(gsk "C-M-s" 'write-file)

(gus "C-x C-f")
(gsk "C-o" 'ido-find-file)

;; Project panel
(gsk "C-p" 'sr-speedbar-toggle)
