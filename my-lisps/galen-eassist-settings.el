(require 'eassist)

(eal-define-keys
 `(c-mode-base-map
   lisp-mode-map
   emacs-lisp-mode-map
   python-mode-map
   )
 `(("C-9" eassist-list-methods)
   ("C-8" eassist-switch-h-cpp)))

(defun galen-func/eassist-settings()
  "Setting for `eassist'."
  (setq eassist-mode-hook
        '(lambda ()
           (define-key eassist-mode-map (kbd "C-9") 'eassist-escape)
           )))

(eval-after-load "eassist"
  `(galen-func/eassist-settings))

(provide 'galen-eassist-settings)
