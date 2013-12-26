;;; rc-ibuffer.el --- group settings for ibuffer

;;; Commentary:

;;; Code:

(require 'ibuffer)
(setq ibuffer-save-filter-groups
      (quote (("default"
               ("Turbine"
                (or
                 (filename . "projects/turbine")
                 (filename . "projects/redtape")
                 ))
               ("Research Assistant"
                (filename . "projects/research_assistant"))))))

(add-hook 'ibuffer-mode-hook
          (lambda ()
            (ibuffer-switch-to-saved-filter-groups "default")))

;;; rc-ibuffer.el ends here
