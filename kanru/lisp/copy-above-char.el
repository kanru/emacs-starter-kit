(defun get-above-char ()
  "Get character from a line above"
  (let ( (o))
    (setq o (- (point) (line-beginning-position)))
    (save-excursion
      (if (> (line-number-at-pos) 1)
          (progn
            (forward-line -1)
            (forward-char o)
            (char-after))))))

(defun copy-above-char ()
  "Copy character from a line above.
Repeated by repeating the final keystroke."
  (interactive)
  (let ((ev last-command-event)
        (repeat t)
	(echo-keystrokes nil))
    (while repeat
      (let ((base (event-basic-type ev)))
        (when (not (eq base ?z))
          (setq repeat nil))
        (when repeat
          (insert (get-above-char))
          (setq ev (read-event)))))
    (push ev unread-command-events)))

(global-set-key (kbd "C-c z") 'copy-above-char)
