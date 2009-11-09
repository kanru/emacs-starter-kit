(require 'bbdb-wl)

(bbdb-wl-setup)
(setq signature-use-bbdb t)
;; shows the name of bbdb in the summary :-)
(setq wl-summary-from-function 'bbdb-wl-from-func)
(add-hook 'wl-mail-setup-hook
          '(lambda ()
             (define-key wl-draft-mode-map (kbd "<C-tab>") 'bbdb-complete-name)))