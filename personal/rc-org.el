;;; rc-org.el --- Org mode settings

;;; Commentary:

;;; Code:

(prelude-require-packages '(org))

(require 'org-install)

(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))

(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)

(setq org-log-done t)

;;; rc-org.el ends here
