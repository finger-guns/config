;;; init-prog.el --- finger__guns;
;;; Commentary:
;;; How all major prog modes should act.
;;; Code:

(defun conditional-disable-modes ()
  (when (> (buffer-size) (* 3 1024 1024))
    (flymake-mode -1)
    (font-lock-mode -1)
    (fundemental-mode -1)
    (which-function-mode -1)))

(use-package hideshow
  :hook (prog-mode . hs-minor-mode)
  :diminish hs-minor-mode)

(use-package prog-mode
  :hook (prog-mode . hs-minor-mode)
  :config
  (setq indent-line-function #'indent-relative-first-indent-point)
  (setq indent-tabs-mode nil
        tab-width 2
        c-basic-indent 2
        c-basic-offset 2
        evil-shift-width 2))

(use-package electric
  :hook ((prog-mode . electric-indent-mode)))

(provide 'init-prog)
;;; init-prog.el ends here.
