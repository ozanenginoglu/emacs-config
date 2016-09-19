;;; init.el --- Main emacs initialization file.


;;; Commentary:
;;


;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(add-to-list 'load-path "~/.emacs.d/lisp")

(require 'user-init)
;;; Code:

(provide 'init)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default-frame-alist
    (quote
     ((top . 50)
      (left . 230)
      (width . 130)
      (height . 50))))
 '(package-selected-packages
   (quote
    (helm-projectile projectile magit zenburn-theme color-theme-solarized color-theme-zenburn anaconda-mode exec-path-from-shell elpy ace-jump-mode python-mode auto-complete monokai-theme))))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
