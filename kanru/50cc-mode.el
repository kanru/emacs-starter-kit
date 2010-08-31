(defun my-java-setup ()
  (c-set-offset 'arglist-intro '+))

(add-hook 'java-mode-hook 'my-java-setup)
