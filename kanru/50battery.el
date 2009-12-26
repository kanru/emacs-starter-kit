(setq battery-status-function 'battery-linux-sysfs
      battery-mode-line-format "[BAT0 %b%p]")
(display-battery-mode t)