;;; .emacs --- -*- lexical-binding: t; -*-

(let ((chemacs-directory
       (file-name-directory (file-truename load-file-name))))
  (load (expand-file-name "chemacs-common.el" chemacs-directory)))

;; Check for a --with-profile flag and honor it; otherwise load the
;; default profile.
(chemacs-check-command-line-args command-line-args 'early-init)