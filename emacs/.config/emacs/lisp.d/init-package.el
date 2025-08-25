;;; init-package.el --- finger__guns; -*- lexical-binding: t; -*-
;;; Comentary:
;;; Use the straight-package manager.
;;; and setup diminish.

;;; Bootstrap straight.el


(use-package async
  :ensure t
  :init
  (dired-async-mode 1)
  (async-bytecomp-package-mode 1))

(use-package direnv
  :ensure t
  :config
  (direnv-mode))

(provide 'init-package)
;;; init-package.el ends here.
