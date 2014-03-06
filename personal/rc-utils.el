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

(defun my-kill-emacs ()
  "Kill whole emacs"
  (interactive)
  (save-some-buffers)
  (kill-emacs))

(global-set-key (kbd "C-x c") 'my-kill-emacs)

;;; rc-utils.el ends here
