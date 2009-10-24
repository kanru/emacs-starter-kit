(setq elmo-spam-scheme 'bogofilter)
(require 'wl-spam)

(setq
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
 wl-user-mail-address-list (quote ("koster@debian.org.tw" "ckanru@gmail.com"))
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