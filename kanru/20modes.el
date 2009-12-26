(add-to-list 'auto-mode-alist '("PKGBUILD" . sh-mode))
(add-hook 'diff-mode-hook (lambda nil (if (string-match "COMMIT_EDITMSG$" (buffer-file-name)) (flyspell-mode))))