(defun tidy-xml ()
  "Pretty format XML markups. The function inserts linebreaks to
separate tags that have nothing but whitespace between them.  It
then indents the markup."
  (interactive)
  (save-excursion
    (let ((begin (point-min))
          (end (point-max)))
      (goto-char begin)
      (while (search-forward-regexp "\>[ \\t]*\<" nil t)
        (backward-char) (insert "\n"))
      (indent-region begin end)))
  (message "Ah, much better!"))
