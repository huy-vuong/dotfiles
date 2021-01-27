;;; hl-fill-column-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "hl-fill-column" "hl-fill-column.el" (0 0 0
;;;;;;  0))
;;; Generated autoloads from hl-fill-column.el

(defvar global-hl-fill-column-mode nil "\
Non-nil if Global Hl-Fill-Column mode is enabled.
See the `global-hl-fill-column-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-hl-fill-column-mode'.")

(custom-autoload 'global-hl-fill-column-mode "hl-fill-column" nil)

(autoload 'global-hl-fill-column-mode "hl-fill-column" "\
Toggle Hl-Fill-Column mode in all buffers.
With prefix ARG, enable Global Hl-Fill-Column mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Hl-Fill-Column mode is enabled in all buffers where
`(lambda nil (hl-fill-column-mode t))' would do it.
See `hl-fill-column-mode' for more information on Hl-Fill-Column mode.

\(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "hl-fill-column" '("hl-fill-column-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; hl-fill-column-autoloads.el ends here
