(setq elmo-spam-scheme 'bogofilter)
(require 'wl-spam)

(setq
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