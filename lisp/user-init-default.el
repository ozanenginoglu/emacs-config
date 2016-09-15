;;; user-init-default.el --- Configuraiton changes on emacs default values.
;;; Code:

;;(set-default-font "Inconsolata-14")

;;; Commentary:
;; Default values for global environment.
;;'(cursor ((t (:background "OrangeRed2"))))
(setq cursor-type (quote box))
(setq menu-bar-mode nil)
(fset 'yes-or-no-p 'y-or-n-p)


;; HIGHLIGHT line mode
(global-hl-line-mode 1)


;; Bütün dosya yedeklerini ortak klasör içine yap.
(setq backup-directory-alist `(("." . "~/.saves")))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; disable curson blinking ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(when (fboundp 'blink-cursor-mode)
  (blink-cursor-mode 0))

;;;;;;;;;;;;;;;;;;;;;
;; disable toolbar ;;
;;;;;;;;;;;;;;;;;;;;;
(when (fboundp 'tool-bar-mode)
  (tool-bar-mode 0))

;;;;;;;;;;;;;;;;;;;;;;;
;; disable scrollbar ;;
;;;;;;;;;;;;;;;;;;;;;;;
(when (fboundp 'set-scroll-bar-mode)
  (set-scroll-bar-mode nil))

;;;;;;;;;;;;;;;;;;;;;;;
;; enable linum mode ;;
;;;;;;;;;;;;;;;;;;;;;;;
;(when (fboundp 'global-linum-mode)
;  (global-linum-mode 1))

;;;;;;;;;;;;;;;;;;;;;;
;; enable narrowing ;;
;;;;;;;;;;;;;;;;;;;;;;
;;(put 'narrow-to-region 'disabled nil)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; enable paren matching mode ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;(show-paren-mode t)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; enable electric pair mode ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;(electric-pair-mode t)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; enable electric indent mode ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;(electric-indent-mode)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; set regular-expression mode to string ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;(require 're-builder)
;;(reb-change-syntax 'string)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Disable the splash screen ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(setq inhibit-splash-screen t)
(setq inhibit-startup-screen t)

;;;;;;;;;;;;;;;;;;;;;
;; enable ido mode ;;
;;;;;;;;;;;;;;;;;;;;;
;(require 'ido)
;(ido-mode t)
;(setq ido-enable-flex-matching t) ;; enable fuzzy matching

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; use spaces instead of tabs ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(setq-default indent-tabs-mode nil)

;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; set default directory ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;
(setq default-directory "~/")


;;;;;;;;;;;;;;;;;;;;;
;; set keybindings ;;
;;;;;;;;;;;;;;;;;;;;;
;(global-set-key (kbd "C-x e") 'eval-print-last-sexp)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; run check-parens after saving any file ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;(add-hook 'after-save-hook 'check-parens nil t)

(message "config default")
(provide 'user-init-default)
;;; user-init-default.el ends here
