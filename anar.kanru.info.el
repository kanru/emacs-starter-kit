(defun load-dejavu ()
  "load-dejavu:"
  (set-default-font "DejaVu Sans Mono-8")
  (set-fontset-font (frame-parameter nil 'font)
                    'han (font-spec :family "WenQuanYi Micro Hei"))
  (set-fontset-font (frame-parameter nil 'font)
                    'symbol (font-spec :family "WenQuanYi Micro Hei"))
  (set-fontset-font (frame-parameter nil 'font)
                    'cjk-misc (font-spec :family "WenQuanYi Micro Hei"))
  (set-fontset-font (frame-parameter nil 'font)
                    'bopomofo (font-spec :family "WenQuanYi Micro Hei"))
  )
;;
;; Load settings
;;
(load-dejavu)

;;
;; Browser
;;
(setq browse-url-browser-function 'browse-url-generic
      browse-url-generic-program "~/bin/chrome")
