;;; init-python.el --- finger__guns -*- lexical-binding: t;-*-;
;;; Commentary:
;;; How python-mode should act.
;;; Code:

(setq major-mode-remap-alist
      '((python-mode . python-ts-mode)))


(use-package python-mode
  :after (direnv-mode)
  :mode ("\\.py\\'" . python-ts-mode)
  :hook ((python-ts-mode . flyspell-prog-mode)
         (python-ts-mode . hs-minor-mode)
         (python-ts-mode . flymake-mode))
  :init
  (setq python-indent-offest 4) ;; if for some fucking reason this isn't picked up
  (setq python-shell-interpreter "ipython")
  :config
  (setq python-indent-def-block-scale 1)
  (setq python-indent-guess-indent-offset 4 ;; we set it as a guess here.
	python-indent-guess-indent-offset-verbose nil))

(use-package python-pytest
  :ensure t)

(use-package pyvenv
  :ensure t
  :hook (python-mode . pyvenv-tracking-mode)
  :config
  (pyvenv-mode 1))

(provide 'init-python)
;;; init-python.el ends here.
