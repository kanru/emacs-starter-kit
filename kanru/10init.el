(server-start)

(add-to-list 'load-path (concat user-specific-dir "/lisp"))

(if (file-exists-p user-specific-dir)
    (mapc #'load (directory-files (concat user-specific-dir "/lisp") nil ".*elc?$")))

(add-to-list 'load-path (concat user-specific-dir "/color-theme"))

;; temporally hard code to uses python2.6
(setenv "PYMACS_PYTHON" "python2.6")

(setq visible-bell nil)
