;; package --- Summary
;;; configure org mode
;;; Commentary:
;; Configures org mode parameters

;;; Code:

(setq org2blog/wp-blog-alist
   (quote
    (("wordpress" :url "https://ozanenginoglu.wordpress.com/xmlrpc.php" :username "ozanenginoglu" :password "***" :default-title "Title" :default-categories
      ("org2blog" "emacs")
      :tags-as-categories nil))))


(message "config org2blog-mode")
(provide 'user-init-org2blog)
;;; user-init-org2blog.el ends here
