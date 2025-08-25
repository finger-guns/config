;;; early-init.el --- finger__guns;  -*- lexical-binding: t; -*-
;;; Commentary:
;;; What should Emacs do at the very start of loading.
;;; Code:

;;; Don't load packages at startup in the very early stages please.
;; (setq debug-on-error t)
(setq package-enable-at-startup nil)

(setq jsonrpc-use-native-json t)

;;; She a bigol regex.
(setq file-name-handler-alist nil)

;;; shh native comp
(setq native-comp-async-report-warnings-errors nil)

;;; Don't show the startup message.
(setq inhibit-startup-message t)

(setq frame-resize-pixelwise t)

;;; We also don't want any menu bars or nothing.
(push '(tool-bar-lines . 0) default-frame-alist)
(push '(menu-bar-lines . 0) default-frame-alist)
(push '(scroll-bar-lines . 0) default-frame-alist)

;;; start big.
(add-to-list 'default-frame-alist '(fullscreen . maximized))
(defvar config-default-gc-threshold 200000000)

(defun config--inhibit-gc ()
  (setq gc-cons-threshold most-positive-fixnum))

(defun config--enable-gc ()
  (setq gc-cons-threshold config-default-gc-threshold))

(add-hook 'minibuffer-setup-hook #'config--inhibit-gc)
(add-hook 'minibuffer-exit-hook #'config--enable-gc)

(provide 'early-init)
;;; early-init.el ends here.
