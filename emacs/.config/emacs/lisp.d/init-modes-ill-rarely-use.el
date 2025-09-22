;;; init-modes-ill-rarely-use.el --- finger__guns;
;;; Commentary:
;;; Just a whole bunch of modes i'll never really use.
;;; Code:

(use-package dotenv-mode
  :defer t
  :ensure t)

(use-package cond-let
  :ensure t (:host github :repo "tarsius/cond-let"))

(use-package magit
  :ensure t
  :bind ("C-x g" . magit-status)
  :config
  (setq magit-display-buffer-function 'magit-display-buffer-same-window-except-diff-v1))

(use-package elixir-mode
  :ensure t)


(provide 'init-modes-ill-rarely-use)
