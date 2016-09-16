;; package --- Summary
;;; configure python shell
;;; Commentary:

(setq python-shell-completion-native-enable nil)
(elpy-enable)

;;(elpy-use-ipython)

(setq python-shell-interpreter "ipython"
    python-shell-interpreter-args "--simple-prompt -i")



(message "config python-mode")
(provide 'user-init-python-mode)
;;; user-init-python-mode.el ends here
