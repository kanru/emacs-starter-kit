(autoload 'po-mode "po-mode"
  "Major mode for translators to edit PO files" t)
(add-to-list 'auto-mode-alist '("\\.po$" . po-mode))
