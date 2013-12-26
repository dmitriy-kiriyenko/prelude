;;; rc-mmm-mode.el --- Settings for mmm mode
;;
;;; Commentary:
;;
;;  Settings from this gist https://gist.github.com/asok/4352610
;;
;;; Code:

(prelude-require-packages '(mmm-mode))

(require 'mmm-auto)
(require 'mmm-erb)

(setq mmm-global-mode 'auto)

(mmm-add-mode-ext-class 'html-erb-mode "\\.html\\.erb\\'" 'erb)
(mmm-add-mode-ext-class 'html-erb-mode nil 'html-js)
(mmm-add-mode-ext-class 'html-erb-mode nil 'html-css)
(mmm-add-mode-ext-class 'html-erb-mode "\\.jst\\.ejs\\'" 'ejs)
(mmm-add-mode-ext-class 'js-mode "\\.js\\.erb\\'" 'erb)

(add-to-list 'auto-mode-alist '("\\.html\\.erb\\'" . html-erb-mode))
(add-to-list 'auto-mode-alist '("\\.jst\\.ejs\\'"  . html-erb-mode))
(add-to-list 'auto-mode-alist '("\\.js\\.erb\\'" . js-mode))

;;; rc-mmm-mode.el ends here
