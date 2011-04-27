;;; config-misc-things.el ---

;; Copyright (C) 2010 Galen
;;
;; Author: galen.gang.liu@gmail.com
;; Keywords:
;; Requirements:
;; Status: not intended to be distributed yet

;; misc variables
(setq auto-compression-mode t)
(setq text-mode-hook (quote (turn-on-auto-fill text-mode-hook-identify)))
(setq user-full-name "Galen")

(custom-set-variables
 '(delete-selection-mode t)
 '(fill-column 90)
 '(kill-whole-line t)
 '(tab-always-indent t)
 '(indent-tabs-mode nil)
 '(tab-width 8)
 '(next-line-add-newlines t))

;; unmark some function
(put 'upcase-region 'disabled nil)

;; set safe-local varaibles
(custom-set-variables
 '(safe-local-variable-values (quote (
                                      (c-file-offsets (substatement-open . 0))
                                      (prompt-to-byte-compile)
                                      (c-indentation-style . k&r)
                                      (indent-tabs-mode . 1)
                                      (folded-file . t)
                                      (TeX-open-quote . "<<")
                                      (TeX-close-quote . ">>")
                                      ))))

;; htmlize
(require 'htmlize)
(setq htmlize-output-type 'inline-css)
(defun galen.gang.liu/add-google-analytics ()
  (while (search-forward "</body>" nil t)
    (replace-match "\n<script src=\"http://www.google-analytics.com/urchin.js\" type=\"text/javascript\">\n</script>\n<script type=\"text/javascript\">\n _uacct = \"UA-78697-3\";\n  urchinTracker();\n</script>\n</body>" nil t))
  )
(add-hook 'htmlize-after-hook 'galen.gang.liu/add-google-analytics)

;; untabify
;; (defun untabify-file ()
;;   (save-excursion
;;     (delete-trailing-whitespace)
;;     (untabify (point-min) (point-max))))

;; footnote mode
(autoload 'footnote-mode "footnote" nil t)
;; (require 'footnote-init)
;; (defun my-fn-hook ()
;;  (footnote-init)
;;  )
;; (add-hook 'footnote-mode-hook 'my-fn-hook)

;; chm viewer
(require 'chm-view)

;;
(add-to-list 'auto-mode-alist '("\\.log$" . auto-revert-mode))

;;
(defun uniq ()
  "Trying to leave only unique strings from selection"
  (interactive)
  (let ((beg (point))
        (end (mark))
        (hash (make-hash-table :test 'equal))
        )
    (if (not end)
        (error "Please, mark text to uniquify")
      (save-excursion
        (narrow-to-region beg end)
        (goto-char (point-min))

        ;; store strings in hash
        (while (not (eobp))
          (beginning-of-line)
          (puthash (buffer-substring (point) (point-at-eol)) 0 hash)
          (forward-line 1))
        (delete-region beg end)
        ;; insert strings from hash
        (maphash (lambda (key val)
                   (insert key "\n")
                   (message "%s" key)
                   )
                 hash)
        (widen)))))

(defun string-join (joiner strings)
  (string-join-accum joiner strings ""))

(defun string-join-accum (joiner strings accum)
  (cond ((not strings) accum)
        ((not (cdr strings)) (concat accum (car strings)))
        (t (string-join-accum joiner (cdr strings)
                              (concat accum (car strings) joiner)))))

;;; config-misc-things.el ends here

