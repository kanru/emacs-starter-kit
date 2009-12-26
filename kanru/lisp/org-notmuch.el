;;; org-notmuch.el --- Support for links to notmuch messages from within Org-mode
;; Author: David Bremner <david@tethera.net>
;; License: GPL3+
;;; Commentary:

;; This file implements links to notmuch messages from within Org-mode.
;; Link types supported include 
;; - notmuch:id:message-id
;; - notmuch:thread:thread-id
;; - notmuch:tag:tag-name
;;
;; Actually currently any notmuch search term after notmuch: should
;; work. This is subject to change if the implementation gets smarters.
;;
;; Currently storing links is only supported in notmuch-search (makes
;; a thread:) and notmuch-show mode.  It might make sense to support
;; notmuch-folder mode too.
;;
;;; Code:

;; Install the link type
(require 'org)
(org-add-link-type "notmuch" 'org-notmuch-open)
(add-hook 'org-store-link-functions 'org-notmuch-store-link)

;; Implementation
(defun org-notmuch-store-link ()
  "Store a link to the currently selected thread."
  (require 'notmuch)
  (when (memq major-mode '(notmuch-show-mode notmuch-search-mode))
    (if (equal major-mode 'notmuch-search-mode)
	(org-notmuch-do-store-link 
	 (or (notmuch-search-find-thread-id) (error "End of search results"))
	 (notmuch-search-find-authors)
	 (notmuch-search-find-subject))
      (let* ((headers (notmuch-show-get-header))
	     (fpair (assoc 'from headers))
	     (spair (assoc 'subject headers)))
	(org-notmuch-do-store-link  (notmuch-show-get-message-id)
				    (if fpair (cdr fpair) nil)
				    (if spair (cdr spair) nil))))))

(defun org-notmuch-do-store-link (id author subject)
  (let ((link  (org-make-link "notmuch:" id)))
    (org-store-link-props :type "notmuch" :from author :subject subject)
    (org-add-link-props :link link :description (org-email-link-description))
    link))


(defun org-notmuch-open (link)
  "Open a link with notmuch. id: or thread: links are opened directly with notmuch-show
otherwise notmuch-search is used to give an index view"
  (require 'notmuch)
  (if (string-match "^\\(thread\\|id\\):.*" link)
      (notmuch-show link)
    (notmuch-search link)))
    
