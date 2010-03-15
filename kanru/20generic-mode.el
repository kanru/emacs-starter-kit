(require 'generic-x)

(when (locate-library "js2-mode")
  (autoload 'js2-mode "js2-mode" nil t)
  (add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode)))

(defvar filter-mode-keywords-regexp
  (regexp-opt '("FILTER" "IMPORT" "CREATE_NEW_LOG" "True" "False") 'words)
  "0xuart filter mode keywords")
(defvar filter-mode-commands-regexp
  (regexp-opt '("STATE" "AFTER" "RESET" "LOG_START" "LOG_STOP" "LOG" "GSTATE" "WRITE" "CHECK" "ENTER") 'words)
  "0xuart filter mode commands")

(define-generic-mode 'filter-mode
  '("#")
  nil
  `(("/.+/" . 'font-lock-function-name-face)
    (,filter-mode-keywords-regexp . 'font-lock-keyword-face)
    (,filter-mode-commands-regexp . 'font-lock-builtin-face))
  '(".filter\\'")
  nil
  "Generic mode for 0xuart .filter files.")
