(create-fontset-from-fontset-spec
 "-bitstream-Menlo-normal-normal-normal-*-14-*-*-*-m-0-fontset-kanru")
(set-fontset-font "fontset-kanru"
                  'han (font-spec :family "WenQuanYi Micro Hei"))
(set-fontset-font "fontset-kanru"
                  'symbol (font-spec :family "WenQuanYi Micro Hei"))
(set-fontset-font "fontset-kanru"
                  'cjk-misc (font-spec :family "WenQuanYi Micro Hei"))
(defun load-dejavu ()
  "load-dejavu fonts:"
  (if (window-system)
      (set-frame-font "fontset-kanru" t)))
;;
;; Load settings
;;
(add-hook 'after-make-frame-functions
          (lambda (new-frame)
            (select-frame new-frame)
            (load-dejavu)))
(add-hook 'after-init-hook 'load-dejavu)
;;
;; Browser
;;
(setq browse-url-browser-function 'browse-url-generic
      browse-url-generic-program "~/bin/chrome")
