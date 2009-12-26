;; Reference
;; http://members.optusnet.com.au/~charles57/GTD/remember.html

(setq org-directory "~/org/")
(setq org-default-notes-file "~/.notes")
(setq remember-annotation-functions '(org-remember-annotation))
(setq remember-handler-functions '(org-remember-handler))
(add-hook 'remember-mode-hook 'org-remember-apply-template)
(define-key global-map "\C-cr" 'org-remember)

;; templats on the office computer
;; F is the USB drive
;; (setq org-remember-templates
;;     '(("Todo" ?t "* TODO %? %^g\n %i\n " "F:/GTD/newgtd.org" "Office")
;;      ("Journal" ?j "\n* %^{topic} %T \n%i%?\n" "L:journal.org")
;;      ("Book" ?b "\n* %^{Book Title} %t :READING: \n%[l:/booktemp.txt]\n" 
;;              "L:journal.org")
;;      ("Private" ?p "\n* %^{topic} %T \n%i%?\n" "F:/gtd/privnotes.org")
;;      ("Contact" ?c "\n* %^{Name} :CONTACT:\n%[l:/contemp.txt]\n" 
;;               "F:/gtd/privnotes.org")
;;      ))

;;  Mytemplates on the  home computer    

(setq org-remember-templates
      '(("Todo" ?t "* TODO %^{Brief Description} %^g\n%?\nAdded: %U" "~/org/gtd.org" "Tasks")
        ;("Journal"   ?j "** %^{Head Line} %U %^g\n%i%?"  "~/GTD/journal.org")
        ;("Clipboard" ?c "** %^{Head Line} %U %^g\n%c\n%?"  "~/GTD/journal.org")
        ;("Receipt"   ?r "** %^{BriefDesc} %U %^g\n%?"   "~/GTD/finances.org")
        ;("Book" ?b "** %^{Book Title} %t :BOOK: \n%[~/.book_template.txt]\n" "~/GTD/journal.org")
        ;("Film" ?f "** %^{Film Title} %t :FILM: \n%[~/.film_template.txt]\n" "~/GTD/journal.org")
        ;("Daily Review" ?a "** %t :COACH: \n%[~/.daily_review.txt]\n" "~/GTD/journal.org")
        ;("Someday"   ?s "** %^{Someday Heading} %U\n%?\n"  "~/GTD/someday.org")
        ;("Vocab"   ?v "** %^{Word?}\n%?\n"  "~/GTD/vocab.org")
        )
      )