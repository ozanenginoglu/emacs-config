;; package --- Summary
;;; configure org mode
;;; Commentary:
;; Configures org mode parameters

;;; Code:

(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(define-key global-map "\C-cb" 'org-iswitchb)
(define-key global-map "\C-cc" 'org-capture)

(setq org-startup-indented t)
(setq org-log-done t)
(setq org-startup-indented t)
(setq org-directory "~/Dropbox/OrgMode")
(setq org-default-notes-file "~/Dropbox/OrgMode/notes.org")

(setq org-agenda-files
   (quote
    ("~/Dropbox/OrgMode/OnemliGunler.org" "~/Dropbox/OrgMode/Is.org" "~/Dropbox/OrgMode/Kisisel.org")))

(require 'org)
(add-hook 'org-mode-hook 'turn-on-font-lock) ;not needed when global-font-lock-mode is on

(setq org-todo-keywords
      (quote ((sequence "TODO(t)" "NEXT(n)" "|" "DONE(d)")
	      (sequence "WAITING(w@/!)" "HOLD(h@/!)" "|" "CANCELLED(c@/!)" "PHONE" "MEETING"))))

(setq org-todo-keyword-faces
      (quote (("TODO" :foreground "red" :weight bold)
	      ("NEXT" :foreground "blue" :weight bold)
	      ("DONE" :foreground "forest green" :weight bold)
	      ("WAITING" :foreground "orange" :weight bold)
	      ("HOLD" :foreground "magenta" :weight bold)
	      ("CANCELLED" :foreground "forest green" :weight bold)
	      ("MEETING" :foreground "forest green" :weight bold)
	      ("PHONE" :foreground "forest green" :weight bold))))

(setq org-capture-templates
      (quote (("t" "todo" entry (file "~/Dropbox/OrgMode/notes.org")
	       "* TODO %?\n%U\n%a\n")
	      ("n" "note" entry (file "~/Dropbox/OrgMode/notes.org")
	       "* %? :NOTE:\n%U\n%a\n")
	      ("m" "meeting" entry (file "~/Dropbox/OrgMode/notes.org")
	       "* MEETING with %? :MEETING:\n%U")
	      ("p" "Phone Call" entry (file "~/Dropbox/OrgMode/notes.org")
	       "* PHONE %? :PHONE:\n%U"))))

(setq org-refile-targets (quote ((nil :maxlevel . 9)
				 (org-agenda-files :maxlevel . 9))))
(setq org-refile-use-outline-path t)
(setq org-outline-path-complete-in-steps nil)
(setq org-refile-allow-creating-parent-nodes (quote confirm))
(setq org-completion-use-ido t)
(setq org-indirect-buffer-display 'current-window)
(defun bh/verify-refile-target ()
  "Exclude todo keywords with a done state from refile targets"
  (not (member (nth 2 (org-heading-components)) org-done-keywords)))

(setq org-refile-target-verify-function 'bh/verify-refile-target)

; Erase all reminders and rebuilt reminders for today from the agenda
(defun bh/org-agenda-to-appt ()
  (interactive)
  (setq appt-time-msg-list nil)
  (org-agenda-to-appt))

; Rebuild the reminders everytime the agenda is displayed
(add-hook 'org-finalize-agenda-hook 'bh/org-agenda-to-appt 'append)

; This is at the end of my .emacs - so appointments are set up when Emacs starts
(bh/org-agenda-to-appt)

; Activate appointments so we get notifications
(appt-activate t)

; If we leave Emacs running overnight - reset the appointments one minute after midnight
(run-at-time "24:01" nil 'bh/org-agenda-to-appt)

(org-babel-do-load-languages
 'org-babel-load-languages
 '((emacs-lisp . t)
   (gnuplot . t)
   (python . t)
   (C . t)
   (sh . t)
   ))

(message "config org-mode")
(provide 'user-init-org)
;;; user-init-org.el ends here
