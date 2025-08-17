;;; init-project.el --- finger__guns;
;;; Commentary:
;;; How to manage projects.
;;; Code:

(use-package project
  :ensure t
  :demand t
  :config
  (setq project-vc-ignores '("node_modules" ".mypy_cache" "dist" "__pycache__" ".venv"))

  :init
  (setq project-mode-line t)
  (advice-add #'project-find-regexp :override #'consult-ripgrep)
  (advice-add #'project-find-file :override #'consult-find))

(provide 'init-project)
;;; init-project.el ends here.
