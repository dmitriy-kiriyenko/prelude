;;; rc-gui.el --- UI and faces settings

;;; Commentary:

;;; Code:

(add-to-list 'custom-theme-load-path "~/.emacs.d/vendor/railscasts-theme")
(prelude-require-packages '(powerline))

(set-face-attribute 'default nil
                    :family "Monaco" :height 140)

(load-theme 'railscasts t nil)

(require 'powerline)
(powerline-default-theme)

;;; rc-gui.el ends here
