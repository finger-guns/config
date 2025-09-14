;;; init-window.el --- finger__guns; -*- lexical-binding: t; -*-
;;; Commentary:
;;; How Emacs windows should look.
;;; Code:

(use-package window
  :config
  (setq display-buffer-alist
        (append
         '(("\\*\\(Flycheck\\|Flymake\\|Package-Lint\\|vc-git :\\).*"
            (display-buffer-in-side-window)
            (window-height . 0.16)
            (side . top)
            (slot . 0)
            (window-parameters . ((no-other-window . t))))
           ("^\\(\\*E?shell\\|vterm\\).*"
            (display-buffer-in-side-window)
            (window-height . 0.16)
            (side . bottom)
            (slot . 1))
           ("\\*Help.*"
            (display-buffer-in-side-window)
            (window-width . 0.20)
            (side . right)
            (slot . 0)
            (window-parameters . ((no-other-window . t)))))
         '(("\\`\\*Embark Collect \\(Live\\|Completions\\)\\*"
            nil
            (window-parameters (mode-line-format . none))))))
  )


(use-package display-fill-column-indicator
  :hook (prog-mode . display-fill-column-indicator-mode)
  :commands display-fill-column-indicator
  :config
  (setq display-fill-column-indicator t
	display-fill-column-indicator-character ?\N{U+2506}))


(use-package custom
  :config
  (add-to-list 'load-path (concat user-emacs-directory "themes.d/"))
  (setq custom-theme-directory (concat user-emacs-directory "themes.d/"))
  (load-theme 'doric-dark t))

(setq-default display-line-numbers 'relative
              display-line-numbers-width 4)
;;; Shut up.
(setq ring-bell-function 'ignore)

;;; Smoth scroll.
(setq scroll-preserve-screen-position t)
(setq scroll-conservatively 101)

(provide 'init-window)
;;; init-window.el ends here.
