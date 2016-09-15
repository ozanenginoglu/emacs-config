;;; user-init-config.el --- Main emacs configuration file
;;; Commentary:
;; 

;;; Code:
;;;;;;;;;;;;;;;;;;;;;;;;
;; Dependent packages ;;
;;;;;;;;;;;;;;;;;;;;;;;;


;; (setenv "PATH" (concat "/usr/local/bin:"
;; 		       "/usr/local/sbin:"
;; 		       "/usr/local/share/python:"
;; 		       (getenv "PATH")))

(defvar user-init-paths
  '("/usr/bin"
    "/usr/local/bin"
    "/usr/local/sbin"
    "/usr/local/share/python"
    "/opt/local/bin"
    )
  )


;;(defvar user-init-python-paths
;;  '("/opt/local/Library/Frameworks/Python.framework/Versions/3.4/lib/python3.4/site-packages")
;;  )

(message "load configuration")
(provide 'user-init-config)

;;; user-init-config.el ends here
