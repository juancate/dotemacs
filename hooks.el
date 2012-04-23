(add-hook 
 'window-configuration-change-hook
 (lambda ()
   (setq frame-title-format
         (concat
          ;invocation-name "@" system-name ": "
          (replace-regexp-in-string
           (concat "/home/" user-login-name) "~"
           (or buffer-file-name "%b"))))))
