;; (autoload 'mew "mew" nil t)
;; (autoload 'mew-send "mew" nil t)

;; (if (boundp 'read-mail-command)
;;     (setq read-mail-command 'mew))

;; (autoload 'mew-user-agent-compose "mew" nil t)
;; (if (boundp 'mail-user-agent)
;;     (setq mail-user-agent 'mew-user-agent))
;; (if (fboundp 'define-mail-user-agent)
;;     (define-mail-user-agent
;;       'mew-user-agent
;;       'mew-user-agent-compose
;;       'mew-draft-send-message
;;       'mew-draft-kill
;;       'mew-send-hook))

;; (setq
;;  mew-name "Kan-Ru Chen"
;;  mew-user "kanru"
;;  mew-mail-domain "kanru.info"
;;  mew-mailbox-type 'maildir
;;  mew-cite-fields '("From:" "Subject:" "Date:" "Message-ID:")
;;  mew-cite-format "From: %s\nSubject: %s\nDate: %s\nMessage-ID: %s\n\n"
;;  mew-cite-prefix-function 'mew-cite-prefix-username
;;  mew-mime-multipart-alternative-list '("Text/Html" "Text/Plain" "*.")
;;  mew-mail-path "~/Maildir"
;;  mew-conf-path "~/Maildir/.mew"
;;  mew-use-8bit t
;;  )
;; ;;(mew-pick-define-macro "tocc=#" "to=#|cc=#")

;; (condition-case nil
;;     (require 'mew-w3m)
;;   (file-error nil))
