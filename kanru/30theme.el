(require 'color-theme)
(setq color-theme-is-global nil
      color-theme-is-cumulative t)
(color-theme-initialize)

(defun krc-set-color-theme (&optional frame)
  (if frame (select-frame frame))
  (unless (window-system)
    (color-theme-arjen)))

(add-hook 'after-make-frame-functions 'krc-set-color-theme)
(add-hook 'after-init-hook 'krc-set-color-theme)