(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(magit-todos-insert-after '(bottom) nil nil "Changed by setter of obsolete option `magit-todos-insert-at'")
 '(org-agenda-files '("~/o/projects.org" "/home/qeqpep/o/schedule.org"))
 '(safe-local-variable-values
   '((etags-regen-ignores "test/manual/etags/")
     (etags-regen-regexp-alist
      (("c" "objc")
       "/[ \11]*DEFVAR_[A-Z_ \11(]+\"\\([^\"]+\\)\"/\\1/" "/[ \11]*DEFVAR_[A-Z_ \11(]+\"[^\"]+\",[ \11]\\([A-Za-z0-9_]+\\)/\\1/"))
     (eval when
      (featurep 'lispy)
      (lispy-mode -1))
     (eval progn
      (unless
          (fboundp 'cae-display-graphic-p)
        (defalias 'cae-display-graphic-p 'display-graphic-p))
      (when
          (and
           (derived-mode-p 'emacs-lisp-mode)
           (buffer-file-name)
           (not
            (cl-member
             (file-name-nondirectory
              (buffer-file-name))
             `("init.el" ,dir-locals-file "custom.el" "packages.el")
             :test #'string=))
           (not
            (string-match-p "/packages/" buffer-file-name))
           (not
            (string-match-p "/trash/" buffer-file-name))
           (not
            (string-match-p "/benchmarks/" buffer-file-name))
           (bound-and-true-p cae-config-finished-loading))
        (add-hook 'write-file-functions 'eval-buffer 1 t))
      (when
          (functionp 'apheleia-mode)
        (apheleia-mode 1))
      (setq-local blamer--block-render-p t)
      (when
          (and
           (buffer-file-name)
           (bound-and-true-p eshell-aliases-file)
           (file-equal-p
            (buffer-file-name)
            (bound-and-true-p eshell-aliases-file))
           (fboundp 'eshell-read-aliases-list))
        (add-hook 'after-save-hook #'eshell-read-aliases-list nil t))
      (setq-local jinx-local-words "cae corfu eshell")
      (when
          (and
           (buffer-file-name)
           (not
            (file-in-directory-p
             (buffer-file-name)
             (concat doom-user-dir "secrets/")))
           (require 'git-auto-commit-mode nil t))
        (git-auto-commit-mode 1)
        (setq-local gac-automatically-push-p t))))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
