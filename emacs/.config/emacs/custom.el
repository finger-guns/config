;;; -*- lexical-binding: t -*-
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(eglot))
 '(safe-local-variable-values
   '((eval let*
           ((proj (project-current))
            (root (when proj (car (project-roots proj))))
            (venv-bin (and root (expand-file-name ".venv/bin" root))))
           (when (and venv-bin (file-directory-p venv-bin))
             (make-local-variable 'exec-path)
             (add-to-list 'exec-path venv-bin t)
             (setenv "PATH"
                     (concat venv-bin path-separator (getenv "PATH")))
             (setq-local python-shell-interpreter
                         (expand-file-name "python" venv-bin))
             (let ((ty-path (expand-file-name "ty" venv-bin)))
               (when (file-executable-p ty-path)
                 (setq-local eglot-server-programs
                             `((python-mode ,ty-path "server")))
                 (setq-local eglot-workspace-configuration
                             '((ty
                                (experimental (autoImport . t)
                                              (rename . t)
                                              (inlayHints
                                               (variableTypes
                                                . :json-false))))))
                 (message "Ty LSP activated with autoImport"))))))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
