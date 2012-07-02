;; =========== antlr2 Mode ===================
(add-to-list 'load-path "~/.emacs.d/extensions/antlr-mode/")
(autoload 'antlr-mode "antlr-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.g\\'" . antlr-mode))

;; =========== Python Mode ===================
;(add-to-list 'load-path "~/.emacs.d/extensions/python-mode-6.0/")
;(autoload 'python-mode "python-mode" "Python Mode." t)

;; =========== Php Mode ======================
;(autoload 'php-mode "php-mode.el" "Php mode." t)
;(setq auto-mode-alist (append '(("/*.\.php[345]?$" . php-mode)) auto-mode-alist))
;(autoload 'php-mode "php-mode" nil t)
;(add-to-list 'auto-mode-alist '("\\.php[34]?\\'\\|\\.phtml\\'" . php-mode))
;(add-to-list 'auto-mode-alist '("\\.module\\'" . php-mode))
;(add-to-list 'auto-mode-alist '("\\.inc\\'" . php-mode))

;; =========== js2 Mode ======================
;(autoload 'js2-mode "js2" nil t)
;(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))
;(setq js2-basic-offset 2)

;; =========== yaml mode =====================
(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))

(add-hook 'yaml-mode-hook
          '(lambda ()
             (define-key yaml-mode-map "\C-m" 'newline-and-indent)))

;; =========== nxhtml ===================
;(load "/usr/share/emacs/site-lisp/nxhtml/autostart.el")
(load "~/.emacs.d/extensions/nxhtml/autostart")
(setq-default mumamo-chunk-coloring 2)
