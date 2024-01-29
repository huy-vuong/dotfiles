(package-initialize)

(setq default-directory "~")

;; MELPA
(require 'package) ;; You might already have this line
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/"))
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))

;; elpy
(require 'package)
(add-to-list 'package-archives
             '("elpy" . "http://jorgenshaefer.github.io/packages/"))

(defun redact-names ()
  "Replace logins in a transcript with '***'."
  (interactive)
  (replace-regexp "<code>.*@</code>" "'''<code>***</code>'''"))
(global-set-key (kbd "C-c C-a") 'redact-names)

(defun convert-template-to-markdown ()
  "Convert all templates to Markdown-formatted links."
  (interactive)
  (markdown-sim)
  (markdown-tt)
  (markdown-phone))
(global-set-key (kbd "C-c m") 'convert-template-to-markdown)

;; Huy

(defun kill-ring-save-buffer ()
  "Select the contents of the entire buffer."
  (interactive)
  (mark-whole-buffer)
  (kill-ring-save 0 0 t))
(global-set-key (kbd "C-c a") 'kill-ring-save-buffer)

(defun open-init-el ()
  "Open the designated .emacs or init.el file."
  (interactive)
  (defconst init-el "~/.emacs")
  (find-file init-el))
(global-set-key (kbd "C-c e") 'open-init-el)

(defun checkstyle ()
  "Make rudimentary fixes for MercuryCheckstyleConfig."
  (interactive)
  (untabify (point-min) (point-max))
  (delete-trailing-whitespace))
(global-set-key (kbd "C-c x") 'checkstyle)

(global-set-key "\C-w" 'backward-kill-word)
(global-set-key "\C-x\C-k" 'kill-region)
(global-set-key "\C-c\C-k" 'kill-region)
(global-set-key (kbd "C-x C-s") 'save-buffer)

;; For markdown-preview-eww.
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("ad782506a61788307ff6f49bddd6cae5b4f6a8e9917ea74af8b1368d9521c5a4" "4904daa168519536b08ca4655d798ca0fb50d3545e6244cefcf7d0c7b338af7e" default)))
 '(inhibit-startup-screen t)
 '(markdown-command "/usr/local/bin/pandoc")
 '(package-selected-packages
   (quote
    (jdee flylisp flycheck-kotlin android-mode ac-js2 kotlin-mode smex fill-column-indicator ace-jump-mode))))

(defun insert-left-arrow ()
  (interactive)
  (insert "←"))

(defun insert-right-arrow ()
  (interactive)
  (insert "→"))

(global-set-key (kbd "C-c <left>") 'insert-left-arrow)
(global-set-key (kbd "C-c <right>") 'insert-right-arrow)

(defun move-line-up ()
  "Move up the current line."
  (interactive)
  (transpose-lines 1)
  (forward-line -2)
  (indent-according-to-mode))

(defun move-line-down ()
  "Move down the current line."
  (interactive)
  (forward-line 1)
  (transpose-lines 1)
  (forward-line -1)
  (indent-according-to-mode))

(global-set-key [(meta shift up)] 'move-line-up)
(global-set-key [(meta shift down)] 'move-line-down)

;; No tabs!
(setq-default line-spacing 4)
(setq-default indent-tabs-mode nil)
(setq tab-width 4)
(setq column-number-mode t)
(setq linum-format "%4d ")

(setq c-default-style "bsd"
      c-basic-offset 4)

;; Highlight line number in linum-mode.
(defface linum-highlight-face
    '((t (:foreground "#EEFFFF" :background "#292d3d")))
  "Face for highlighting current line"
  :group 'linum)
(require 'hlinum)
(hlinum-activate)

(global-subword-mode 1)
(global-linum-mode 1)
(global-hl-line-mode 1)
(display-time-mode 1)

;; nxml-mode
(setq nxml-child-indent 4)

;; scala-mode
(setq scala-indent:align-parameters t)

(if (fboundp 'electric-indent-mode) (electric-indent-mode -1))
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

;; Theme
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(defun palenight-linum ()
  (interactive)
  (set-face-attribute 'fringe nil :foreground "#697098")
  (set-face-attribute 'linum nil :foreground "#697098"))
(if (display-graphic-p) (set-frame-font "JetBrains Mono 12"))
(if (display-graphic-p) (load-theme 'palenight t))
(if (display-graphic-p) (palenight-linum))
; (defun atom-one-dark-linum ()
;   (interactive)
;   (set-face-attribute 'fringe nil :foreground "#5C6370")
;   (set-face-attribute 'linum nil :foreground "#5C6370"))
; (if (display-graphic-p) (set-frame-font "Roboto Mono Light 14"))
; (if (display-graphic-p) (load-theme 'atom-one-dark t))
; (if (display-graphic-p) (atom-one-dark-linum))
(defun atom-one-dark-org-mode ()
  (interactive)
  (custom-theme-set-faces 'user
                          `(org-level-1 ((t (:foreground "#61AFEF")))))
  (custom-theme-set-faces 'user
                          `(org-level-2 ((t (:foreground "#C678DD")))))
  (custom-theme-set-faces 'user
                          `(org-level-3 ((t (:foreground "#E06C75")))))
  (custom-theme-set-faces 'user
                          `(org-level-4 ((t (:foreground "#D19A66")))))
  (custom-theme-set-faces 'user
                          `(org-level-5 ((t (:foreground "#E5C07B")))))
  (custom-theme-set-faces 'user
                          `(org-level-6 ((t (:foreground "#98C379")))))
  (custom-theme-set-faces 'user
                          `(org-level-7 ((t (:foreground "#56B6C2")))))
  (custom-theme-set-faces 'user
                          `(org-level-8 ((t (:foreground "#3E4451"))))))
(atom-one-dark-org-mode)

;; Fill Column Indicator
; (require 'fill-column-indicator)
(setq fci-rule-color "#5C6370")
(define-globalized-minor-mode global-fci-mode fci-mode (lambda () (fci-mode 1)))
(global-fci-mode 1)

;; Ido Mode
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)

;; Smex Mode
(smex-initialize)
(global-set-key (kbd "M-x") 'smex)

;; Ace Jump Mode
(require 'ace-jump-mode)
(define-key global-map (kbd "C-c C-SPC" ) 'ace-jump-mode)

;; Huy's Functions

(defun incoming-oct ()
  "Return the weekly average incoming rate of tickets throughout October."
  (defconst incoming-oct 132 "Cumulative incoming sum during October.")
  (defconst days-in-oct 31.0 "Amount of days in October.")
  (incoming-rate incoming-oct days-in-oct))

(defun incoming-nov ()
  "Return the weekly average incoming rate of tickets throughout November."
  (defconst incoming-nov 74 "Cumulative incoming sum during November.")
  (defconst days-in-nov 30.0 "Amount of days in November.")
  (incoming-rate incoming-nov days-in-nov))

(defun incoming-dec (incoming-dec days-in-dec)
  "Return the weekly average incoming rate of tickets throughout December."
  ; TODO Replace incoming-dec with a constant once December ends.
  ; TODO Replace days-in-dec with the below line once December ends.
  ; (defconst days-in-nov 31.0 "Amount of days in December.")
  (incoming-rate incoming-dec days-in-dec))

(defun incoming-q4 (cumulative-sum)
  (defconst days-in-q4 92.0 "Amount of days in Q4.")
  (incoming-rate cumulative-sum days-in-q4))

(defun incoming-rate (cumulative-sum amount-of-days)
  (defconst days-in-week 7.0 "Amount of days in a week.")
  (* days-in-week (/ cumulative-sum (* amount-of-days 1.0))))

(defun import-method-handles ()
  (interactive)
  (insert "import java.lang.invoke.MethodHandles;"))
;(global-set-key (kbd "C-c i") 'import-method-handles)

(defun use-method-handles ()
  (interactive)
  (insert "MethodHandles.lookup().lookupClass()"))
;(global-set-key (kbd "C-c m") 'use-method-handles)

;; elpy

(require 'package)
(add-to-list 'package-archives
             '("elpy" . "https://jorgenschaefer.github.io/packages/"))
; (elpy-enable)

;; web-mode
;; Enable web-mode for JSP files.
(add-to-list 'auto-mode-alist
             '("\\.jsp\\'" . web-mode)
             '("\\.asp\\'" . web-mode))

;; puml-mode https://github.3com/skuro/puml-mode
;; Enable puml-mode for PlantUML files
(add-to-list 'auto-mode-alist
             '("\\.puml\\'" . puml-mode)
             '("\\.plantuml\\'" . puml-mode))


(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(hl-line ((t (:background "#212432"))))
 '(org-level-1 ((t (:foreground "#61AFEF"))))
 '(org-level-2 ((t (:foreground "#C678DD"))))
 '(org-level-3 ((t (:foreground "#E06C75"))))
 '(org-level-4 ((t (:foreground "#D19A66"))))
 '(org-level-5 ((t (:foreground "#E5C07B"))))
 '(org-level-6 ((t (:foreground "#98C379"))))
 '(org-level-7 ((t (:foreground "#56B6C2"))))
 '(org-level-8 ((t (:foreground "#3E4451")))))
(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)
