;;; rc-helm.el --- Helm modules settings

;;; Commentary:

;;; Code:

(prelude-require-packages '(helm-rails))
;; (require 'helm-rails-loaddefs)

(define-key global-map (kbd "s-t") 'helm-rails-controllers)
(define-key global-map (kbd "s-y") 'helm-rails-models)
(define-key global-map (kbd "s-u") 'helm-rails-views)
(define-key global-map (kbd "s-o") 'helm-rails-specs)
(define-key global-map (kbd "s-r") 'helm-rails-all)

;;; rc-helm.el ends here
