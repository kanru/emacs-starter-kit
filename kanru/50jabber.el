(require 'jabber-autoloads)

(setq jabber-account-list
      '(("ckanru@gmail.com"
         ;;   (:password . nil) or (:password . "your-pass")
         (:network-server . "talk.google.com")
         (:port . 443)
         (:connection-type . ssl))
        ))