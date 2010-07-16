(require 'generic-x)

(define-generic-mode
    'kconfig-mode
  '("#")
  '("config"
    "bool"
    "depends on"
    "help" "---help---"
    "prompt"
    "default"
    "select"
    "range"
    "option"
    "menu" "endmenu" "menuconfig"
    "comment"
    "if" "endif"
    "choice" "endchoice"
    "source"
    "tristate")
  nil
  '("Kconfig$")
  nil
  "A mode for Kconfig files")
