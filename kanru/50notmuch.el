(require 'notmuch)

(defun notmuch-since-month ()
  (let* ((one-month (seconds-to-time (* 30 86400)))
         (today (current-time))
         (yesterday (time-subtract today one-month)))
    (concat (format-time-string "%s" yesterday)
            ".."
            (format-time-string "%s" today))))

(let ((tags '("inbox"
              "unread"
              "awesome"
              "awesome-devel"
              "chewing"
              "chewing-devel"
              "dot"
              "hackingthursday"
              "hojia"
              "lug"
              "mew-int"
              "pcmanx"
              "0xlab"
              "madbutterfly"
              "notmuch"
              "emacs-devel"
              "golang"
              "archlinux"
              "lkml")))
  (setq notmuch-saved-searches
        (mapcar (lambda (tag)
                  `(,tag . ,(concat "tag:" tag " and " (notmuch-since-month))))
                tags))
  )

(setq notmuch-search-oldest-first nil)
(defun notmuch-mark-as-spam ()
  (interactive)
  (notmuch-call-notmuch-process "tag" "-unread" "-inbox" "+spam"
                                (notmuch-search-find-thread-id)
                                "and"
                                notmuch-search-query-string))
(global-set-key (kbd "C-c m") 'notmuch-folder)
