(require 'yasnippet)
(require 'dropdown-list)
(yas/initialize)
(setq yas/snippet-dirs `(,(concat user-specific-dir "/snippets/local")
                         ,(concat user-specific-dir "/snippets/built-in")))
(mapcar 'yas/load-directory yas/snippet-dirs)
(setq yas/prompt-functions
      (cons 'yas/dropdown-prompt
            (remove 'yas/dropdown-prompt yas/prompt-functions)))
