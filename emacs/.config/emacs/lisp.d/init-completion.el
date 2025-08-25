; init-completion.el --- finger__guns; -*- lexical-binding: t; -*-
; Commentary:
; The completion framework to use.
; Code:

(use-package cape
  :ensure t)

(use-package corfu
  :ensure t
  :custom
  (corfu-cycle t)
  (corfu-auto t)
  (corfu-auto-prefix 2)
  (corfu-auto-delay 0.25)
  (corfu-preview-current nil)
  (corfu-separator ?\s)
  (corfu-preselect 'prompt)
  (corfu-quit-at-boundary nil)
  (corfu-quit-no-match t)
  (corfu-echo-documentation nil)
  (corfu-scroll-margin 5)
  (corfu-min-width 80)
  (corfu-max-width 80)
  :hook ((prog-mode . corfu-mode)
         (shell-mode . corfu-mode)
         (eshell-mode . corfu-mode)
         (emacs-lisp-mode . corfu-mode))
  :config
  (setq corfu-quit-no-match 'separator) ;; ensure symbol value is preserved
  (setq completion-cycle-threshold 3
        read-extended-command-predicate #'command-completion-default-include-p)
  (setq completion-category-overrides '((eglot (styles orderless))))
)


(use-package orderless
  :ensure t
  :init
  (setq completion-styles '(orderless partial-completion basic)
        completion-category-defaults nil
        completion-category-overrides nil))

(use-package dash
  :ensure t)

(use-package s
  :ensure t)

(use-package emacs
  :custom
  (tab-always-indent 'complete))

(use-package tempel
  :ensure t
  :custom
  (tempel-trigger-prefix "<")
  :bind ("C-<" . tempel-insert))

(provide 'init-completion)
; init-completion.el ends here.
