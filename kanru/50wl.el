(autoload 'wl-user-agent-compose "wl-draft" nil t)
(if (boundp 'read-mail-command)
    (setq read-mail-command 'wl))
(if (boundp 'mail-user-agent)
    (setq mail-user-agent 'wl-user-agent))
(if (fboundp 'define-mail-user-agent)
    (define-mail-user-agent
      'wl-user-agent
      'wl-user-agent-compose
      'wl-draft-send
      'wl-draft-kill
      'mail-send-hook))
(setq elmo-spam-scheme 'bogofilter)
(require 'wl-spam)
(add-hook 'mime-view-mode-hook
	  (lambda ()
	    (local-set-key "f" 'browse-url)))
;(define-key wl-summary-mode-map "q"    'wl-summary-suspend)
;(define-key wl-summary-mode-map "Q"    'wl-summary-exit)

(setq
 elmo-localdir-folder-path "~/Maildir"
 wl-temporary-file-directory "/tmp"
 wl-default-spec "."
 wl-default-folder ".inbox"
 wl-draft-folder ".draft"
 wl-trash-folder ".trash"
 wl-queue-folder ".queue"
 wl-spam-folder ".spam"
 wl-refile-default-from-folder ".from"
 wl-draft-send-mail-function (quote sendmail-send-it)
 wl-from "Kan-Ru Chen <kanru@anar.kanru.info>"
 wl-spam-undecided-folder-list (quote (".unsure-bogofilter"))
 wl-summary-width nil
 wl-draft-always-delete-myself t
 wl-draft-delete-myself-from-bcc-fcc t
 wl-draft-preview-attributes-list '((mail recipients envelope-from)
                                    (news newsgroups nntp-posting-server nntp-posting-port))
 wl-user-mail-address-list (quote ("koster@debian.org.tw" "ckanru@gmail.com" "kanru@kanru.info"))
 wl-generate-mailer-string-function 'wl-generate-user-agent-string-1
 wl-message-ignored-field-list '("^.*:")
 wl-message-visible-field-list
  '("^\\(To\\|Cc\\):"
    
    "^Subject:"
    "^\\(From\\|Reply-To\\):"
    "^Organization:"
    "^Message-Id:"
    "^\\(Posted\\|Date\\):"
    )
  wl-message-sort-field-list
  '("^From"
    
    "^Organization:"
    "^X-Attribution:"
    "^Subject"
     "^Date"
     "^To"
     "^Cc")
  )