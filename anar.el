;;
;; Chinese font setting
;;
;(set-frame-font "Droid Sans Mono Dot Zero-9")
;(add-to-list 'default-frame-alist '(font . "Droid Sans Mono Dot Zero-9"))
(set-frame-font "DejaVu Sans Mono-9")
(add-to-list 'default-frame-alist '(font . "DejaVu Sans Mono-9"))
(or (string= (frame-parameter nil 'font) "tty")
    (set-fontset-font (frame-parameter nil 'font)
                      'han (font-spec :family "WenQuanYi Micro Hei") nil 'prepend)
    (set-fontset-font (frame-parameter nil 'font)
                      'symbol (font-spec :family "DejaVu Sans Mono") nil 'prepend)
    (set-fontset-font (frame-parameter nil 'font)
                      'cyrillic (font-spec :family "DejaVu Sans Mono") nil 'prepend)
    (set-fontset-font (frame-parameter nil 'font)
                      'cjk-misc (font-spec :family "WenQuanYi Micro Hei") nil 'prepend)
    (set-fontset-font (frame-parameter nil 'font)
                      'bopomofo (font-spec :family "WenQuanYi Micro Hei") nil 'prepend)
    (set-fontset-font (frame-parameter nil 'font)
                      'unicode (font-spec :family "DejaVu Sans Mono") nil 'append)
    )
 
;;
;; Browser
;;
(setq browse-url-browser-function 'browse-url-generic
      browse-url-generic-program "~/bin/chrome")
