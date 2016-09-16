;;; user-init-theme.el --- Configure color theme

;;; Commentary:
;; 

;;; Code:

(defun user-init-configure-zenburn ()
  "Configure zenburn theme."
  (load-theme 'zenburn t))

(defun user-init-configure-spacegray ()
  "Configure zenburn theme."
  (load-theme 'spacegray t))

(defun user-init-configure-solarized ()
  "Configure solarized theme."
  ;; Add solarized as safe theme, so it wont give an error
  (custom-set-variables
   ;; custom-set-variables was added by Custom.
   ;; If you edit it by hand, you could mess it up, so be careful.
   ;; Your init file should contain only one such instance.
   ;; If there is more than one, they won't work right.
   '(custom-safe-themes (quote ("fc5fcb6f1f1c1bc01305694c59a1a861b008c534cae8d0e48e4d5e81ad718bc6" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" default))))
  (load-theme 'solarized-dark))

(defun user-init-configure-monokai ()
  "Configure monokai theme."
  (load-theme 'monokai t)
  )

(defun user-init-configure-atom-dark ()
  "Configure atom dark theme."
  (load-theme 'atom-dark t)
  )

(defun user-init-configure-gruvbox ()
  "Configure gruvbox theme."
  (load-theme 'gruvbox t)
)
;;In order to change theme, change initilialization function here.
;; (add-hook 'after-init-hook#'user-init-configure-solarized)
(add-hook 'after-init-hook 'user-init-configure-zenburn)
;; (add-hook 'after-init-hook 'user-init-configure-gruvbox)

(message "config theme")
(provide 'user-init-theme)

;;; user-init-theme.el ends here
