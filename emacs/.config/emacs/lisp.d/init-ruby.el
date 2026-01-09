;;; init-ruby.el --- finger__guns;
;;; Commentary:
;;; How ruby should act.
;;; Code:

(add-to-list 'auto-mode-alist '("\\.rb\\'" . ruby-ts-mode))

(use-package ruby-ts-mode
  :mode (("\\.rb\\'" . ruby-ts-mode)
         ("\\.rake\\'" . ruby-ts-mode)
         ("\\.gemspec\\'" . ruby-ts-mode)
         ("\\.ru\\'" . ruby-ts-mode))
  :interpreter "ruby"
  :hook (ruby-ts-mode . eglot-ensure)
  :config
  (setq eglot-workspace-configuration
        '(:ruby-lsp (:rubyVersionManager "mise")))
  (add-to-list 'eglot-server-programs '((ruby-mode ruby-ts-mode) "ruby-lsp"))
  (setq ruby-indent-level 2))



(provide 'init-ruby)
