(eval-after-load "rng-loc"
  '(progn
    (add-to-list 'rng-schema-locating-files
                 (concat user-specific-dir "/relaxng/html5/schemas.xml"))
    (add-to-list 'rng-schema-locating-files
                 (concat user-specific-dir "/relaxng/atom/schemas.xml"))))
(require 'whattf-dt)
