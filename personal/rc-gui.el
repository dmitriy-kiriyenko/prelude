;;; rc-gui.el --- UI and faces settings

;;; Commentary:

;;; Code:

(prelude-require-packages '(powerline))

(set-face-attribute 'default nil
                    :family "Monaco" :height (case system-type
                                               ('gnu/linux 130)
                                               ('darwin 145)) :weight 'normal)
(set-fontset-font "fontset-default"
                  'unicode
                  '("Monaco" . "unicode"))

(require 'powerline)
(powerline-default-theme)

;;; rc-gui.el ends here
