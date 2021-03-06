(require 'bbdb) 
(bbdb-initialize)
(setq
    bbdb-file "~/.emacs.d/bbdb"              ;; keep ~/ clean; set before loading
    bbdb-offer-save 1                        ;; 1 means save-without-asking
    bbdb-use-pop-up nil                      ;; allow popups for addresses
    bbdb-electric-p t                        ;; be disposable with SPC
    bbdb-popup-target-lines  1               ;; very small
    bbdb-dwim-net-address-allow-redundancy t ;; always use full name
    bbdb-quiet-about-name-mismatches 2       ;; show name-mismatches 2 secs
    bbdb-always-add-address t                ;; add new addresses to existing...
                                             ;; ...contacts automatically
    bbdb-canonicalize-redundant-nets-p t     ;; x@foo.bar.cx => x@bar.cx
    bbdb-completion-type nil                 ;; complete on anything
    bbdb-complete-name-allow-cycling t       ;; cycle through matches
                                             ;; this only works partially
    bbbd-message-caching-enabled t           ;; be fast
    bbdb-use-alternate-names t               ;; use AKA
    bbdb-elided-display t                    ;; single-line addresses
    ;; auto-create addresses from mail
    bbdb/mail-auto-create-p 'bbdb-ignore-some-messages-hook   
    bbdb-ignore-some-messages-alist ;; don't ask about fake addresses
    ;; NOTE: there can be only one entry per header (such as To, From)
    ;; http://flex.ee.uec.ac.jp/texi/bbdb/bbdb_11.html
    '(("From" . "no.?reply\\|DAEMON\\|daemon\\|facebookmail\\|twitter\\|root")
      ("List-Id" . ".*"))
    bbdb-auto-notes-alist '(("User-Agent" (".*$" MUA 0))
                            ("X-Mailer"   (".*$" MUA 0)))
)
(add-hook 'bbdb-notice-hook 'bbdb-auto-notes-hook)
