;;; rc-ruby-on-rails.el --- Setting for RoR develempent
;;
;;; Commentary:
;;
;;; Code:

(prelude-require-packages '(rinari feature-mode))

(require 'rinari)

(setq scss-compile-at-save nil)

(require 'feature-mode)
(setq feature-default-language "fi")
(add-to-list 'auto-mode-alist '("\.feature$" . feature-mode))

;;; rc-ruby-on-rails.el ends here
