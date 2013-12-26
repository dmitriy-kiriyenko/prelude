;;; rc-scala.el --- Settings for scala development

;;; Commentary:

;;; Code:

(prelude-require-packages '(scala-mode2))

(require 'scala-mode2)

(add-to-list 'load-path "~/.emacs.d/vendor/scamacs/scamacs")
(add-to-list 'load-path "~/.emacs.d/vendor/scamacs/ensime/dist/elisp")
(add-to-list 'load-path "~/.emacs.d/vendor/scamacs/ecb")
(add-to-list 'load-path "~/.emacs.d/vendor/scamacs/ensime/dist/bin")


(when (require 'ensime)
  (add-hook 'scala-mode-hook 'ensime-scala-mode-hook))

(when (require 'ensime-ecb)
  (ecb-layout-define "right-my" right
    "This function creates the following layout:

   -------------------------------------------------------
   |                                      |              |
   |                                      |              |
   |                                      |              |
   |                                      |              |
   |                                      |              |
   |                                      |              |
   |                                      |              |
   |             Edit                     |              |
   |                                      |              |
   |                                      |              |
   |                                      |              |
   |                                      |  Methods     |
   |                                      |              |
   |                                      |              |
   |                                      |              |
   -------------------------------------------------------
   |                                                     |
   |                    Compilation                      |
   |                                                     |
   -------------------------------------------------------

If you have not set a compilation-window in `ecb-compile-window-height' then
the layout contains no persistent compilation window and the other windows get a
little more place."
    (let ((edit-win (previous-window (selected-window) 0)))
      (ensime-set-type-inspector-tree-buffer)
      (select-window edit-win)))

  (defun ensime-ecb ()
    (interactive)
    (ecb-activate)
    (ecb-layout-switch "right-my")
    (ensime)))

;;; rc-scala ends here
