;;; user-init-jedi.el --- python jedi initialization.


;;; Commentary:
;;

(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:setup-keys t)                      ; optional
(setq jedi:complete-on-dot nil)                 ; optional

(message "config jedi")
(provide 'user-init-jedi)
;;; user-init-jedi.el ends here
