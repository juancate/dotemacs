;; =============
;;     smex
;; ============
(require 'smex)
(smex-initialize)

(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; This is your old M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

;; ======== Enumeración de las lineas =======================

(require 'linum)
(global-linum-mode 1)
(setq linum-format "%3d ")

;; =========== Auto Complete Mode ===============
(add-to-list 'load-path "~/.emacs.d/extensions/auto-complete/")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/extensions/auto-complete//ac-dict")
(ac-config-default)


;; ========== AutoPair =========================
(add-to-list 'load-path "~/.emacs.d/extensions/autopair/") ;; comment if autopair.el is in standard load path
(require 'autopair)
(autopair-global-mode) ;; enable autopair in all buffers

;; ========= ColorTheme ========================

(if (display-graphic-p)
  (progn
    (add-to-list 'load-path "~/.emacs.d/extensions/color-theme-6.6.0")
    (require 'color-theme)
    (color-theme-initialize)
    (color-theme-dark-himito)))


;; ================ YASnippet ========================================
(add-to-list 'load-path "~/.emacs.d/extensions/yasnippet")
(require 'yasnippet)
;(yas/global-mode 1)
;(setq yas/snippet-dirs '("~/.emacs.d/extensions/yasnippet/snippets" "~/.emacs.d/extensions/yasnippet/extra/imported"))
(yas/initialize)
(yas/load-directory "~/.emacs.d/extensions/yasnippet/snippets")

;; ================ AUCTex ======================================
;(add-to-list 'load-path "~/.emacs.d/extensions/auctex-11.86")
;(load "auctex.el" nil t t)
;(load "preview-latex.el" nil t t)

;(setq TeX-auto-save t)
;(setq TeX-parse-self t)
;(setq TeX-PDF-mode t)

;(custom-set-variables
; '(TeX-view-program-list (quote (("Evince" "okular %o"))))
; '(TeX-view-program-selection (quote ((output-pdf "Okular") ))))


;; ============= CEDET ============================

;; Load CEDET
(load-file "~/.emacs.d/extensions/cedet-1.0.1/common/cedet.el")
;(load-file "/usr/share/emacs/site-lisp/cedet/common/cedet.el")

;; Load ECB
(add-to-list 'load-path "~/.emacs.d/extensions/ecb-2.40")
;(add-to-list 'load-path "/usr/share/emacs/site-lisp/ecb")

;; To load ecb first after starting it by ecb-activate
(require 'ecb-autoloads)

;; some variables
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(ecb-options-version "2.40")
 '(ecb-primary-secondary-mouse-buttons (quote mouse-1--mouse-2))
 '(ecb-source-path (quote ("/home/juancate")))
 '(ecb-tip-of-the-day nil)
 '(ecb-windows-width 20)
 '(show-paren-mode t)
 '(tool-bar-mode nil))

;; Shortcuts

;; Tree Visualization
(global-set-key [f12] 'ecb-toggle-ecb-windows)

;; activate ecb by default
(ecb-activate)


