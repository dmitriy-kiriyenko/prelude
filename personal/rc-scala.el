;;; rc-scala.el --- Scala settings

;;; Code:

(prelude-require-packages '(ensime))

(require 'ensime)
(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)

;;; Commentary:

;;; rc-scala.el ends here
