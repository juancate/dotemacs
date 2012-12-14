(when
    (load
     (expand-file-name "~/.emacs.d/elpa/package.el"))
  (package-initialize))

(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))

(ido-mode t)

;; "y or n" instead of "yes or no"
(fset 'yes-or-no-p 'y-or-n-p)

(add-to-list 'load-path "~/.emacs.d")

(load-file "~/.emacs.d/hooks.el")

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
 '(default ((t (:inherit nil :stipple nil :background "#101e2e" :foreground "#eeeeec" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 113 :width normal :foundry "unknown" :family "Droid Sans Mono")))))

(load-file "~/.emacs.d/modes.el")
(load-file "~/.emacs.d/personal.el")

;; Personalizacion
;; ===== Set standard indent to 4 spaces ====
(setq default-tab-width 4)
(setq indent-line-function 'insert-tab)

(defvaralias 'c-basic-offset 'tab-width)
(defvaralias 'cperl-indent-level 'tab-width)
(setq-default indent-tabs-mode nil)
;(setq standard-indent 4)

;; Show the trailing whitespace
(setq-default show-trailing-whitespace t)
;; taken from http://schlotter.org/pub/dotemacs

(defun turn-off-show-trailing-whitespace ()
  "Turn on the highlighting of trailing whitespace in this buffer."
  (interactive)
  (setq show-trailing-whitespace nil))

;; Bindings

;; Go to line
(global-set-key [(meta g)] 'goto-line)

;; Remove trailing whitespaces
(global-set-key [f6] 'delete-trailing-whitespace)

;; Align
(global-set-key "\C-x\C-a" 'align-regexp)

;(server-start)
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
