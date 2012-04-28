(when
    (load
     (expand-file-name "~/.emacs.d/elpa/package.el"))
  (package-initialize))

(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))

(ido-mode t)

;; "y or n" instead of "yes or no"
(fset 'yes-or-no-p 'y-or-n-p)

(add-to-list 'load-path "~/.emacs.d")
(load "hooks")

;; Don't show the menu unless we are using X
;(menu-bar-mode -1)

;; toggle-truncate-long-line
(setq-default truncate-lines t)

;; Disable scrollbar 
(toggle-scroll-bar -1) 

;; Disable toolbar
(tool-bar-mode -1) 

;; Don't show welcome screen
(setq inhibit-splash-screen t) 

;; Don't show scratch message
(setq initial-scratch-message nil)

;; Set default directory
(setq default-directory "~/")

;;; Display column numbers
(column-number-mode 1)

;; Show line-number in the mode line
(line-number-mode 1)


;; ========== Set the fill column ==========
(setq-default fill-column 79)
(setq text-mode-hook 'turn-on-auto-fill) ;turn on word-wrap

;;; document default encoding (UTF-8)
(setq locale-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)
(prefer-coding-system 'utf-8)


;; ===== Set standard indent to 2 rather that 4 ====
;;(setq standard-indent 2)


;; ========== Support Wheel Mouse Scrolling ==========
(mouse-wheel-mode t)

;; ========== Place Backup Files in Specific Directory ==========

;; Enable backup files.
(setq make-backup-files t)

;; Save all backup file in this directory.
(setq backup-directory-alist (quote ((".*" . "~/.emacs.d/.backups/"))))

(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#101e2e" :foreground "#eeeeec" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 138 :width normal :foundry "unknown" :family "Inconsolata")))))


(load "modes")
(load "personal")

;; Personalizacion
(setq default-tab-width 4)
(setq indent-line-function 'insert-tab)

(defvaralias 'c-basic-offset 'tab-width)
(defvaralias 'cperl-indent-level 'tab-width)
(setq-default indent-tabs-mode nil)
;(setq standard-indent 4)

