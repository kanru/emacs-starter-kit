(server-start)

(add-to-list 'load-path (concat user-specific-dir "/lisp"))
(if (file-exists-p user-specific-dir)
  (mapc #'load (directory-files (concat user-specific-dir "/lisp") nil ".*el$")))