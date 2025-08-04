;;; init-dired.el --- finger___guns -*- lexical-binding: t; -*-
;;; Commentary:
;;; dired.
;;; Code:

(use-package dired
  :ensure nil  ;; dired is built-in, no need to install
  :bind (:map dired-mode-map
              ("s-u" . revert-buffer))
  :init
  (setq dired-use-ls-dired nil)
  )
