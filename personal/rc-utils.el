;;; rc-utils.el --- Useful utils

;;; Commentary:
;;; iwb grabbed from - http://emacsblog.org/2007/01/17/indent-whole-buffer/

;;; Code:

(defun iwb ()
  "Indent whole buffer."
  (interactive)
  (delete-trailing-whitespace)
  (indent-region (point-min) (point-max) nil)
  (untabify (point-min) (point-max)))

;;; rc-utils.el ends here
