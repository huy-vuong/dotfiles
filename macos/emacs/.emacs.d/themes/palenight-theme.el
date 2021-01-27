(deftheme palenight
  "Created 2018-05-02.")

(custom-theme-set-variables
 'palenight
 '(ansi-color-names-vector ["#181A1F" "#ff5370" "#C3E88D" "#ffcb6b" "#82b1ff" "#c792ea" "#C3E88D" "#f8f8f2"])
 '(fci-rule-color "#292D3E")
 '(web-mode-enable-css-colorization t))

(custom-theme-set-faces
 'palenight
 '(bold ((((class color) (min-colors 257)) (:weight bold :foreground nil)) (((class color) (min-colors 256)) (:weight bold :foreground nil)) (((class color) (min-colors 16)) (:weight bold :foreground nil))))
 '(italic ((t (:slant italic))))
 '(bold-italic ((t (:inherit (bold italic)))))
 '(fringe ((((class color) (min-colors 257)) (:inherit default :foreground "#565761")) (((class color) (min-colors 256)) (:inherit default :foreground "#3f3f3f")) (((class color) (min-colors 16)) (:inherit default :foreground "brightblack"))))
 '(region ((((class color) (min-colors 257)) (:background "#4B5263" :foreground nil :distant-foreground "#989faa")) (((class color) (min-colors 256)) (:background "#262626" :foreground nil :distant-foreground "#242424")) (((class color) (min-colors 16)) (:background "brightblack" :foreground nil :distant-foreground "white"))))
 '(highlight ((t (:background "#ff5370" :distant-foreground "#f8f8f2" :foreground "#181A1F"))))
 '(cursor ((((class color) (min-colors 257)) (:background "#7e57c2" :foreground "#EEFFFF")) (((class color) (min-colors 256)) (:background "#7e57c2" :foreground "#EEFFFF")) (((class color) (min-colors 16)) (:background "brightmagenta"))))
 '(shadow ((((class color) (min-colors 257)) (:foreground "#697098")) (((class color) (min-colors 256)) (:foreground "#525252")) (((class color) (min-colors 16)) (:foreground "brightblack"))))
 '(minibuffer-prompt ((t (:foreground "#82b1ff"))))
 '(tooltip ((((class color) (min-colors 257)) (:background "#4B5263" :foreground "#bfc7d5")) (((class color) (min-colors 256)) (:background "#262626" :foreground "#2d2d2d")) (((class color) (min-colors 16)) (:background "brightblack" :foreground "white"))))
 '(secondary-selection ((((class color) (min-colors 257)) (:background "#565761")) (((class color) (min-colors 256)) (:background "#3f3f3f")) (((class color) (min-colors 16)) (:background "brightblack"))))
 '(lazy-highlight ((t (:background "#697098" :distant-foreground "#181A1F" :foreground "#f8f8f2" :weight bold))))
 '(match ((((class color) (min-colors 257)) (:foreground "#C3E88D" :background "#181A1F" :weight bold)) (((class color) (min-colors 256)) (:foreground "#89DDFF" :background "black" :weight bold)) (((class color) (min-colors 16)) (:foreground "green" :background "black" :weight bold))))
 '(trailing-whitespace ((((class color) (min-colors 257)) (:background "#ff5370")) (((class color) (min-colors 256)) (:background "#ff869a")) (((class color) (min-colors 16)) (:background "red"))))
 '(nobreak-space ((t (:inherit default :underline nil))))
 '(vertical-border ((t (:background "#181A1F" :foreground "#181A1F"))))
 '(link ((((class color) (min-colors 257)) (:foreground "#ff869a" :underline t :weight bold)) (((class color) (min-colors 256)) (:foreground "#ff869a" :underline t :weight bold)) (((class color) (min-colors 16)) (:foreground "brightmagenta" :underline t :weight bold))))
 '(error ((t (:foreground "#ff5370"))))
 '(warning ((((class color) (min-colors 257)) (:foreground "#ffcb6b")) (((class color) (min-colors 256)) (:foreground "#ffcb6b")) (((class color) (min-colors 16)) (:foreground "yellow"))))
 '(success ((((class color) (min-colors 257)) (:foreground "#C3E88D")) (((class color) (min-colors 256)) (:foreground "#89DDFF")) (((class color) (min-colors 16)) (:foreground "green"))))
 '(font-lock-builtin-face ((t (:foreground "##ff5370"))))
 '(font-lock-comment-delimiter-face ((t (:inherit font-lock-comment-face))))
 '(font-lock-constant-face ((((class color) (min-colors 257)) (:foreground "#ffcb6b")) (((class color) (min-colors 256)) (:foreground "#F78C6C")) (((class color) (min-colors 16)) (:foreground "brightred"))))
 '(font-lock-function-name-face ((t (:foreground "#82b1ff"))))
 '(font-lock-keyword-face ((t (:foreground "#c792ea"))))
 '(font-lock-string-face ((((class color) (min-colors 257)) (:foreground "#C3E88D")) (((class color) (min-colors 256)) (:foreground "#89DDFF")) (((class color) (min-colors 16)) (:foreground "green"))))
 '(font-lock-type-face ((((class color) (min-colors 257)) (:foreground "#ff5370")) (((class color) (min-colors 256)) (:foreground "#ff869a")) (((class color) (min-colors 16)) (:foreground "red"))))
 '(font-lock-variable-name-face ((((class color) (min-colors 257)) (:foreground "#f8f8f2")) (((class color) (min-colors 256)) (:foreground "#dfdfdf")) (((class color) (min-colors 16)) (:foreground "white"))))
 '(font-lock-warning-face ((t (:inherit warning))))
 '(font-lock-negation-char-face ((((class color) (min-colors 257)) (:inherit bold :foreground "#82b1ff")) (((class color) (min-colors 256)) (:inherit bold :foreground "#82b1ff")) (((class color) (min-colors 16)) (:inherit bold :foreground "brightblue"))))
 '(font-lock-preprocessor-face ((((class color) (min-colors 257)) (:inherit bold :foreground "#82b1ff")) (((class color) (min-colors 256)) (:inherit bold :foreground "#82b1ff")) (((class color) (min-colors 16)) (:inherit bold :foreground "brightblue"))))
 '(font-lock-regexp-grouping-backslash ((((class color) (min-colors 257)) (:inherit bold :foreground "#82b1ff")) (((class color) (min-colors 256)) (:inherit bold :foreground "#82b1ff")) (((class color) (min-colors 16)) (:inherit bold :foreground "brightblue"))))
 '(font-lock-regexp-grouping-construct ((((class color) (min-colors 257)) (:inherit bold :foreground "#82b1ff")) (((class color) (min-colors 256)) (:inherit bold :foreground "#82b1ff")) (((class color) (min-colors 16)) (:inherit bold :foreground "brightblue"))))
 '(mode-line-highlight ((((class color) (min-colors 257)) (:inherit highlight :distant-foreground "#292D3E")) (((class color) (min-colors 256)) (:inherit highlight :distant-foreground nil)) (((class color) (min-colors 16)) (:inherit highlight :distant-foreground nil))))
 '(mode-line-buffer-id ((t (:weight bold))))
 '(header-line ((((class color) (min-colors 257)) (:inherit mode-line :distant-foreground "#292D3E")) (((class color) (min-colors 256)) (:inherit mode-line :distant-foreground nil)) (((class color) (min-colors 16)) (:inherit mode-line :distant-foreground nil))))
 '(custom-button ((((class color) (min-colors 257)) (:foreground "#82b1ff" :background "#292D3E" :box (:line-width 1 :style none))) (((class color) (min-colors 256)) (:foreground "#82b1ff" :background nil :box (:line-width 1 :style none))) (((class color) (min-colors 16)) (:foreground "brightblue" :background nil :box (:line-width 1 :style none)))))
 '(custom-button-unraised ((((class color) (min-colors 257)) (:foreground "#ff869a" :background "#292D3E" :box (:line-width 1 :style none))) (((class color) (min-colors 256)) (:foreground "#ff869a" :background nil :box (:line-width 1 :style none))) (((class color) (min-colors 16)) (:foreground "brightmagenta" :background nil :box (:line-width 1 :style none)))))
 '(custom-button-pressed-unraised ((((class color) (min-colors 257)) (:foreground "#292D3E" :background "#ff869a" :box (:line-width 1 :style none))) (((class color) (min-colors 256)) (:foreground nil :background "#ff869a" :box (:line-width 1 :style none))) (((class color) (min-colors 16)) (:foreground nil :background "brightmagenta" :box (:line-width 1 :style none)))))
 '(custom-button-pressed ((((class color) (min-colors 257)) (:foreground "#292D3E" :background "#82b1ff" :box (:line-width 1 :style none))) (((class color) (min-colors 256)) (:foreground nil :background "#82b1ff" :box (:line-width 1 :style none))) (((class color) (min-colors 16)) (:foreground nil :background "brightblue" :box (:line-width 1 :style none)))))
 '(custom-button-mouse ((((class color) (min-colors 257)) (:foreground "#292D3E" :background "#82b1ff" :box (:line-width 1 :style none))) (((class color) (min-colors 256)) (:foreground nil :background "#82b1ff" :box (:line-width 1 :style none))) (((class color) (min-colors 16)) (:foreground nil :background "brightblue" :box (:line-width 1 :style none)))))
 '(custom-variable-button ((((class color) (min-colors 257)) (:foreground "#C3E88D" :underline t)) (((class color) (min-colors 256)) (:foreground "#89DDFF" :underline t)) (((class color) (min-colors 16)) (:foreground "green" :underline t))))
 '(custom-saved ((((class color) (min-colors 257)) (:foreground "#C3E88D" :background "#47524d" :bold t)) (((class color) (min-colors 256)) (:foreground "#89DDFF" :background nil :bold t)) (((class color) (min-colors 16)) (:foreground "green" :background nil :bold t))))
 '(custom-comment ((((class color) (min-colors 257)) (:foreground "#bfc7d5" :background "#4B5263")) (((class color) (min-colors 256)) (:foreground "#2d2d2d" :background "#262626")) (((class color) (min-colors 16)) (:foreground "white" :background "brightblack"))))
 '(custom-comment-tag ((((class color) (min-colors 257)) (:foreground "#565761")) (((class color) (min-colors 256)) (:foreground "#3f3f3f")) (((class color) (min-colors 16)) (:foreground "brightblack"))))
 '(custom-modified ((((class color) (min-colors 257)) (:foreground "#82b1ff" :background "#3a4764")) (((class color) (min-colors 256)) (:foreground "#82b1ff" :background nil)) (((class color) (min-colors 16)) (:foreground "brightblue" :background nil))))
 '(custom-variable-tag ((((class color) (min-colors 257)) (:foreground "#c792ea")) (((class color) (min-colors 256)) (:foreground "#c792ea")) (((class color) (min-colors 16)) (:foreground "magenta"))))
 '(custom-visibility ((((class color) (min-colors 257)) (:foreground "#82b1ff" :underline nil)) (((class color) (min-colors 256)) (:foreground "#82b1ff" :underline nil)) (((class color) (min-colors 16)) (:foreground "brightblue" :underline nil))))
 '(custom-group-subtitle ((((class color) (min-colors 257)) (:foreground "#ff5370")) (((class color) (min-colors 256)) (:foreground "#ff869a")) (((class color) (min-colors 16)) (:foreground "red"))))
 '(custom-group-tag ((((class color) (min-colors 257)) (:foreground "#ff869a")) (((class color) (min-colors 256)) (:foreground "#ff869a")) (((class color) (min-colors 16)) (:foreground "brightmagenta"))))
 '(custom-group-tag-1 ((t (:foreground "#ff5370"))))
 '(custom-set ((((class color) (min-colors 257)) (:foreground "#ffcb6b" :background "#292D3E")) (((class color) (min-colors 256)) (:foreground "#ffcb6b" :background nil)) (((class color) (min-colors 16)) (:foreground "yellow" :background nil))))
 '(custom-themed ((((class color) (min-colors 257)) (:foreground "#ffcb6b" :background "#292D3E")) (((class color) (min-colors 256)) (:foreground "#ffcb6b" :background nil)) (((class color) (min-colors 16)) (:foreground "yellow" :background nil))))
 '(custom-invalid ((((class color) (min-colors 257)) (:foreground "#ff5370" :background "#533448")) (((class color) (min-colors 256)) (:foreground "#ff869a" :background nil)) (((class color) (min-colors 16)) (:foreground "red" :background nil))))
 '(custom-state ((((class color) (min-colors 257)) (:foreground "#C3E88D" :background "#47524d")) (((class color) (min-colors 256)) (:foreground "#89DDFF" :background nil)) (((class color) (min-colors 16)) (:foreground "green" :background nil))))
 '(custom-changed ((((class color) (min-colors 257)) (:foreground "#82b1ff" :background "#292D3E")) (((class color) (min-colors 256)) (:foreground "#82b1ff" :background nil)) (((class color) (min-colors 16)) (:foreground "brightblue" :background nil))))
 '(dired-directory ((((class color) (min-colors 257)) (:foreground "#C3E88D")) (((class color) (min-colors 256)) (:foreground "#89DDFF")) (((class color) (min-colors 16)) (:foreground "green"))))
 '(dired-ignored ((((class color) (min-colors 257)) (:foreground "#697098")) (((class color) (min-colors 256)) (:foreground "#525252")) (((class color) (min-colors 16)) (:foreground "brightblack"))))
 '(dired-flagged ((((class color) (min-colors 257)) (:foreground "#ff5370")) (((class color) (min-colors 256)) (:foreground "#ff869a")) (((class color) (min-colors 16)) (:foreground "red"))))
 '(dired-header ((((class color) (min-colors 257)) (:foreground "#82b1ff" :weight bold)) (((class color) (min-colors 256)) (:foreground "#82b1ff" :weight bold)) (((class color) (min-colors 16)) (:foreground "brightblue" :weight bold))))
 '(dired-mark ((((class color) (min-colors 257)) (:foreground "#ffcb6b" :weight bold)) (((class color) (min-colors 256)) (:foreground "#F78C6C" :weight bold)) (((class color) (min-colors 16)) (:foreground "brightred" :weight bold))))
 '(dired-marked ((((class color) (min-colors 257)) (:foreground "#c792ea" :weight bold)) (((class color) (min-colors 256)) (:foreground "#c792ea" :weight bold)) (((class color) (min-colors 16)) (:foreground "magenta" :weight bold))))
 '(dired-perm-write ((((class color) (min-colors 257)) (:foreground "#bfc7d5" :underline t)) (((class color) (min-colors 256)) (:foreground "#2d2d2d" :underline t)) (((class color) (min-colors 16)) (:foreground "white" :underline t))))
 '(dired-symlink ((((class color) (min-colors 257)) (:foreground "#C3E88D" :weight bold)) (((class color) (min-colors 256)) (:foreground "#C3E88D" :weight bold)) (((class color) (min-colors 16)) (:foreground "brightcyan" :weight bold))))
 '(dired-warning ((((class color) (min-colors 257)) (:foreground "#ffcb6b")) (((class color) (min-colors 256)) (:foreground "#ffcb6b")) (((class color) (min-colors 16)) (:foreground "yellow"))))
 '(flx-highlight-face ((((class color) (min-colors 257)) (:weight bold :foreground "#ffcb6b" :underline nil)) (((class color) (min-colors 256)) (:weight bold :foreground "#ffcb6b" :underline nil)) (((class color) (min-colors 16)) (:weight bold :foreground "yellow" :underline nil))))
 '(hl-line ((t (:background "#3E4452"))))
 '(ido-first-match ((((class color) (min-colors 257)) (:foreground "#ffcb6b")) (((class color) (min-colors 256)) (:foreground "#F78C6C")) (((class color) (min-colors 16)) (:foreground "brightred"))))
 '(ido-indicator ((((class color) (min-colors 257)) (:foreground "#ff5370" :background "#292D3E")) (((class color) (min-colors 256)) (:foreground "#ff869a" :background nil)) (((class color) (min-colors 16)) (:foreground "red" :background nil))))
 '(ido-only-match ((((class color) (min-colors 257)) (:foreground "#C3E88D")) (((class color) (min-colors 256)) (:foreground "#89DDFF")) (((class color) (min-colors 16)) (:foreground "green"))))
 '(ido-subdir ((((class color) (min-colors 257)) (:foreground "#ff869a")) (((class color) (min-colors 256)) (:foreground "#ff869a")) (((class color) (min-colors 16)) (:foreground "brightmagenta"))))
 '(ido-virtual ((((class color) (min-colors 257)) (:foreground "#697098")) (((class color) (min-colors 256)) (:foreground "#525252")) (((class color) (min-colors 16)) (:foreground "brightblack"))))
 '(isearch ((((class color) (min-colors 257)) (:background "#ff869a" :foreground "#181A1F" :weight bold)) (((class color) (min-colors 256)) (:background "#ff869a" :foreground "black" :weight bold)) (((class color) (min-colors 16)) (:background "brightmagenta" :foreground "black" :weight bold))))
 '(linum ((((class color) (min-colors 257)) (:inherit default :foreground "#565761" :distant-foreground nil :weight normal :italic nil :underline nil :strike-through nil)) (((class color) (min-colors 256)) (:inherit default :foreground "#3f3f3f" :distant-foreground nil :weight normal :italic nil :underline nil :strike-through nil)) (((class color) (min-colors 16)) (:inherit default :foreground "brightblack" :distant-foreground nil :weight normal :italic nil :underline nil :strike-through nil))))
 '(message-header-subject ((((class color) (min-colors 257)) (:foreground "#f8f8f2")) (((class color) (min-colors 256)) (:foreground "#dfdfdf")) (((class color) (min-colors 16)) (:foreground "white"))))
 '(message-header-name ((((class color) (min-colors 257)) (:foreground "#C3E88D")) (((class color) (min-colors 256)) (:foreground "#89DDFF")) (((class color) (min-colors 16)) (:foreground "green"))))
 '(message-header-to ((((class color) (min-colors 257)) (:foreground "#697098")) (((class color) (min-colors 256)) (:foreground "#525252")) (((class color) (min-colors 16)) (:foreground "brightblack"))))
 '(message-header-other ((((class color) (min-colors 257)) (:foreground "#697098")) (((class color) (min-colors 256)) (:foreground "#525252")) (((class color) (min-colors 16)) (:foreground "brightblack"))))
 '(window-divider ((t (:inherit vertical-border))))
 '(window-divider-first-pixel ((t (:inherit window-divider))))
 '(window-divider-last-pixel ((t (:inherit window-divider))))
 '(diff-added ((((class color) (min-colors 257)) (:inherit hl-line :foreground "#C3E88D")) (((class color) (min-colors 256)) (:inherit hl-line :foreground "#89DDFF")) (((class color) (min-colors 16)) (:inherit hl-line :foreground "green"))))
 '(diff-changed ((((class color) (min-colors 257)) (:foreground "#ff869a")) (((class color) (min-colors 256)) (:foreground "#ff869a")) (((class color) (min-colors 16)) (:foreground "brightmagenta"))))
 '(diff-removed ((((class color) (min-colors 257)) (:foreground "#ff5370" :background "#4B5263")) (((class color) (min-colors 256)) (:foreground "#ff869a" :background "#262626")) (((class color) (min-colors 16)) (:foreground "red" :background "brightblack"))))
 '(diff-header ((((class color) (min-colors 257)) (:foreground "#C3E88D" :background nil)) (((class color) (min-colors 256)) (:foreground "#C3E88D" :background nil)) (((class color) (min-colors 16)) (:foreground "brightcyan" :background nil))))
 '(diff-file-header ((((class color) (min-colors 257)) (:foreground "#82b1ff" :background nil)) (((class color) (min-colors 256)) (:foreground "#82b1ff" :background nil)) (((class color) (min-colors 16)) (:foreground "brightblue" :background nil))))
 '(diff-hunk-header ((((class color) (min-colors 257)) (:foreground "#ff869a")) (((class color) (min-colors 256)) (:foreground "#ff869a")) (((class color) (min-colors 16)) (:foreground "brightmagenta"))))
 '(diff-refine-added ((t (:inherit diff-added :inverse-video t))))
 '(diff-refine-changed ((t (:inherit diff-changed :inverse-video t))))
 '(diff-refine-removed ((t (:inherit diff-removed :inverse-video t))))
 '(evil-ex-info ((((class color) (min-colors 257)) (:foreground "#ff5370" :slant italic)) (((class color) (min-colors 256)) (:foreground "#ff869a" :slant italic)) (((class color) (min-colors 16)) (:foreground "red" :slant italic))))
 '(evil-ex-substitute-matches ((((class color) (min-colors 257)) (:background "#181A1F" :foreground "#ff5370" :strike-through t :weight bold)) (((class color) (min-colors 256)) (:background "black" :foreground "#ff869a" :strike-through t :weight bold)) (((class color) (min-colors 16)) (:background "black" :foreground "red" :strike-through t :weight bold))))
 '(evil-ex-substitute-replacement ((((class color) (min-colors 257)) (:background "#181A1F" :foreground "#C3E88D" :weight bold)) (((class color) (min-colors 256)) (:background "black" :foreground "#89DDFF" :weight bold)) (((class color) (min-colors 16)) (:background "black" :foreground "green" :weight bold))))
 '(evil-search-highlight-persist-highlight-face ((t (:inherit lazy-highlight))))
 '(flyspell-incorrect ((((class color) (min-colors 257)) (:underline (:style wave :color "#ff5370") :inherit unspecified)) (((class color) (min-colors 256)) (:underline (:style wave :color "#ff869a") :inherit unspecified)) (((class color) (min-colors 16)) (:underline (:style wave :color "red") :inherit unspecified))))
 '(helm-selection ((((class color) (min-colors 257) (background dark)) (:inherit bold :background "#32374D" :distant-foreground "#181A1F")) (((class color) (min-colors 256) (background dark)) (:inherit bold :background "#82b1ff" :distant-foreground "#ff869a")) (((class color) (min-colors 16) (background dark)) (:inherit bold :background "blue" :distant-foreground "brightmagenta")) (((class color) (min-colors 257) (background light)) (:inherit bold :background "#82b1ff" :distant-foreground "#181A1F")) (((class color) (min-colors 256) (background light)) (:inherit bold :background "#82b1ff" :distant-foreground "black")) (((class color) (min-colors 16) (background light)) (:inherit bold :background "blue" :distant-foreground "black"))))
 '(helm-match ((t (:distant-foreground "#f8f8f2" :foreground "#ff5370" :underline t))))
 '(helm-source-header ((((class color) (min-colors 257)) (:background "#3B4048" :foreground "#697098")) (((class color) (min-colors 256)) (:background "#2e2e2e" :foreground "#525252")) (((class color) (min-colors 16)) (:background "brightblack" :foreground "brightblack"))))
 '(helm-visible-mark ((t (:inherit (bold highlight)))))
 '(helm-ff-file ((((class color) (min-colors 257)) (:foreground "#bfc7d5")) (((class color) (min-colors 256)) (:foreground "#2d2d2d")) (((class color) (min-colors 16)) (:foreground "white"))))
 '(helm-ff-prefix ((((class color) (min-colors 257)) (:foreground "#82b1ff")) (((class color) (min-colors 256)) (:foreground "#44b9b1")) (((class color) (min-colors 16)) (:foreground "brightgreen"))))
 '(helm-ff-dotted-directory ((((class color) (min-colors 257)) (:foreground "#565761")) (((class color) (min-colors 256)) (:foreground "#3f3f3f")) (((class color) (min-colors 16)) (:foreground "brightblack"))))
 '(helm-ff-directory ((((class color) (min-colors 257)) (:foreground "#f8f8f2")) (((class color) (min-colors 256)) (:foreground "#dfdfdf")) (((class color) (min-colors 16)) (:foreground "white"))))
 '(helm-ff-executable ((((class color) (min-colors 257)) (:foreground "#f8f8f2" :inherit italic)) (((class color) (min-colors 256)) (:foreground "#dfdfdf" :inherit italic)) (((class color) (min-colors 16)) (:foreground "white" :inherit italic))))
 '(helm-grep-match ((t (:distant-foreground "#ff5370" :foreground "#FF5370"))))
 '(helm-grep-file ((((class color) (min-colors 257)) (:foreground "#82b1ff")) (((class color) (min-colors 256)) (:foreground "#44b9b1")) (((class color) (min-colors 16)) (:foreground "brightgreen"))))
 '(helm-grep-lineno ((((class color) (min-colors 257)) (:foreground "#697098")) (((class color) (min-colors 256)) (:foreground "#525252")) (((class color) (min-colors 16)) (:foreground "brightblack"))))
 '(helm-grep-finish ((((class color) (min-colors 257)) (:foreground "#C3E88D")) (((class color) (min-colors 256)) (:foreground "#89DDFF")) (((class color) (min-colors 16)) (:foreground "green"))))
 '(highlight-numbers-number ((((class color) (min-colors 257)) (:inherit bold :foreground "#ff5370")) (((class color) (min-colors 256)) (:inherit bold :foreground "#ff869a")) (((class color) (min-colors 16)) (:inherit bold :foreground "red"))))
 '(hl-todo ((((class color) (min-colors 257)) (:foreground "#ff5370" :weight bold)) (((class color) (min-colors 256)) (:foreground "#ff869a" :weight bold)) (((class color) (min-colors 16)) (:foreground "red" :weight bold))))
 '(hydra-face-red ((((class color) (min-colors 257)) (:foreground "#ff5370" :weight bold)) (((class color) (min-colors 256)) (:foreground "#ff869a" :weight bold)) (((class color) (min-colors 16)) (:foreground "red" :weight bold))))
 '(hydra-face-blue ((((class color) (min-colors 257)) (:foreground "#82b1ff" :weight bold)) (((class color) (min-colors 256)) (:foreground "#82b1ff" :weight bold)) (((class color) (min-colors 16)) (:foreground "brightblue" :weight bold))))
 '(hydra-face-amaranth ((((class color) (min-colors 257)) (:foreground "#c792ea" :weight bold)) (((class color) (min-colors 256)) (:foreground "#c792ea" :weight bold)) (((class color) (min-colors 16)) (:foreground "magenta" :weight bold))))
 '(hydra-face-pink ((((class color) (min-colors 257)) (:foreground "#ff869a" :weight bold)) (((class color) (min-colors 256)) (:foreground "#ff869a" :weight bold)) (((class color) (min-colors 16)) (:foreground "brightmagenta" :weight bold))))
 '(hydra-face-teal ((((class color) (min-colors 257)) (:foreground "#82b1ff" :weight bold)) (((class color) (min-colors 256)) (:foreground "#44b9b1" :weight bold)) (((class color) (min-colors 16)) (:foreground "brightgreen" :weight bold))))
 '(imenu-list-entry-face-0 ((((class color) (min-colors 257)) (:foreground "#ff869a")) (((class color) (min-colors 256)) (:foreground "#ff869a")) (((class color) (min-colors 16)) (:foreground "brightmagenta"))))
 '(imenu-list-entry-subalist-face-0 ((t (:inherit imenu-list-entry-face-0 :weight bold))))
 '(imenu-list-entry-face-1 ((((class color) (min-colors 257)) (:foreground "#C3E88D")) (((class color) (min-colors 256)) (:foreground "#89DDFF")) (((class color) (min-colors 16)) (:foreground "green"))))
 '(imenu-list-entry-subalist-face-1 ((t (:inherit imenu-list-entry-face-1 :weight bold))))
 '(imenu-list-entry-face-2 ((((class color) (min-colors 257)) (:foreground "#ffcb6b")) (((class color) (min-colors 256)) (:foreground "#ffcb6b")) (((class color) (min-colors 16)) (:foreground "yellow"))))
 '(imenu-list-entry-subalist-face-2 ((t (:inherit imenu-list-entry-face-2 :weight bold))))
 '(linum-relative-current-face ((((class color) (min-colors 257)) (:inherit hl-line :foreground "#bfc7d5" :distant-foreground nil :weight normal :italic nil :underline nil :strike-through nil)) (((class color) (min-colors 256)) (:inherit hl-line :foreground "#2d2d2d" :distant-foreground nil :weight normal :italic nil :underline nil :strike-through nil)) (((class color) (min-colors 16)) (:inherit hl-line :foreground "white" :distant-foreground nil :weight normal :italic nil :underline nil :strike-through nil))))
 '(rainbow-delimiters-depth-1-face ((((class color) (min-colors 257)) (:foreground "#82b1ff")) (((class color) (min-colors 256)) (:foreground "#82b1ff")) (((class color) (min-colors 16)) (:foreground "brightblue"))))
 '(rainbow-delimiters-depth-2-face ((((class color) (min-colors 257)) (:foreground "#c792ea")) (((class color) (min-colors 256)) (:foreground "#c792ea")) (((class color) (min-colors 16)) (:foreground "magenta"))))
 '(rainbow-delimiters-depth-3-face ((((class color) (min-colors 257)) (:foreground "#C3E88D")) (((class color) (min-colors 256)) (:foreground "#89DDFF")) (((class color) (min-colors 16)) (:foreground "green"))))
 '(rainbow-delimiters-depth-4-face ((((class color) (min-colors 257)) (:foreground "#ffcb6b")) (((class color) (min-colors 256)) (:foreground "#F78C6C")) (((class color) (min-colors 16)) (:foreground "brightred"))))
 '(rainbow-delimiters-depth-5-face ((((class color) (min-colors 257)) (:foreground "#ff869a")) (((class color) (min-colors 256)) (:foreground "#ff869a")) (((class color) (min-colors 16)) (:foreground "brightmagenta"))))
 '(rainbow-delimiters-depth-6-face ((((class color) (min-colors 257)) (:foreground "#ffcb6b")) (((class color) (min-colors 256)) (:foreground "#ffcb6b")) (((class color) (min-colors 16)) (:foreground "yellow"))))
 '(rainbow-delimiters-depth-7-face ((((class color) (min-colors 257)) (:foreground "#82b1ff")) (((class color) (min-colors 256)) (:foreground "#44b9b1")) (((class color) (min-colors 16)) (:foreground "brightgreen"))))
 '(rainbow-delimiters-unmatched-face ((t (:foreground "#ff5370" :inverse-video t :weight bold))))
 '(rainbow-delimiters-mismatched-face ((t (:inherit rainbow-delimiters-unmatched-face))))
 '(reb-match-0 ((((class color) (min-colors 257)) (:foreground "#ffcb6b" :inverse-video t)) (((class color) (min-colors 256)) (:foreground "#F78C6C" :inverse-video t)) (((class color) (min-colors 16)) (:foreground "brightred" :inverse-video t))))
 '(reb-match-1 ((((class color) (min-colors 257)) (:foreground "#c792ea" :inverse-video t)) (((class color) (min-colors 256)) (:foreground "#c792ea" :inverse-video t)) (((class color) (min-colors 16)) (:foreground "magenta" :inverse-video t))))
 '(reb-match-2 ((((class color) (min-colors 257)) (:foreground "#C3E88D" :inverse-video t)) (((class color) (min-colors 256)) (:foreground "#89DDFF" :inverse-video t)) (((class color) (min-colors 16)) (:foreground "green" :inverse-video t))))
 '(reb-match-3 ((((class color) (min-colors 257)) (:foreground "#ffcb6b" :inverse-video t)) (((class color) (min-colors 256)) (:foreground "#ffcb6b" :inverse-video t)) (((class color) (min-colors 16)) (:foreground "yellow" :inverse-video t))))
 '(show-paren-match ((((class color) (min-colors 257)) (:foreground "#ff5370" :background "#181A1F" :weight ultra-bold)) (((class color) (min-colors 256)) (:foreground "#ff869a" :background "black" :weight ultra-bold)) (((class color) (min-colors 16)) (:foreground "red" :background "black" :weight ultra-bold))))
 '(show-paren-mismatch ((((class color) (min-colors 257)) (:foreground "#181A1F" :background "#ff5370" :weight ultra-bold)) (((class color) (min-colors 256)) (:foreground "black" :background "#ff869a" :weight ultra-bold)) (((class color) (min-colors 16)) (:foreground "black" :background "red" :weight ultra-bold))))
 '(sp-pair-overlay-face ((((class color) (min-colors 257)) (:background "#4B5263")) (((class color) (min-colors 256)) (:background "#262626")) (((class color) (min-colors 16)) (:background "brightblack"))))
 '(sp-show-pair-match-face ((((class color) (min-colors 257)) (:foreground "#ff5370" :background "#181A1F" :weight ultra-bold)) (((class color) (min-colors 256)) (:foreground "#ff869a" :background "black" :weight ultra-bold)) (((class color) (min-colors 16)) (:foreground "red" :background "black" :weight ultra-bold))))
 '(sp-show-pair-mismatch-face ((((class color) (min-colors 257)) (:foreground "#181A1F" :background "#ff5370" :weight ultra-bold)) (((class color) (min-colors 256)) (:foreground "black" :background "#ff869a" :weight ultra-bold)) (((class color) (min-colors 16)) (:foreground "black" :background "red" :weight ultra-bold))))
 '(undo-tree-visualizer-default-face ((((class color) (min-colors 257)) (:foreground "#697098")) (((class color) (min-colors 256)) (:foreground "#525252")) (((class color) (min-colors 16)) (:foreground "brightblack"))))
 '(undo-tree-visualizer-current-face ((((class color) (min-colors 257)) (:foreground "#C3E88D" :weight bold)) (((class color) (min-colors 256)) (:foreground "#89DDFF" :weight bold)) (((class color) (min-colors 16)) (:foreground "green" :weight bold))))
 '(undo-tree-visualizer-unmodified-face ((((class color) (min-colors 257)) (:foreground "#697098")) (((class color) (min-colors 256)) (:foreground "#525252")) (((class color) (min-colors 16)) (:foreground "brightblack"))))
 '(undo-tree-visualizer-active-branch-face ((((class color) (min-colors 257)) (:foreground "#82b1ff")) (((class color) (min-colors 256)) (:foreground "#82b1ff")) (((class color) (min-colors 16)) (:foreground "brightblue"))))
 '(undo-tree-visualizer-register-face ((((class color) (min-colors 257)) (:foreground "#ffcb6b")) (((class color) (min-colors 256)) (:foreground "#ffcb6b")) (((class color) (min-colors 16)) (:foreground "yellow"))))
 '(vhl/default-face ((((class color) (min-colors 257)) (:background "#565761")) (((class color) (min-colors 256)) (:background "#3f3f3f")) (((class color) (min-colors 16)) (:background "brightblack"))))
 '(which-key-key-face ((((class color) (min-colors 257)) (:foreground "#C3E88D")) (((class color) (min-colors 256)) (:foreground "#89DDFF")) (((class color) (min-colors 16)) (:foreground "green"))))
 '(which-key-group-description-face ((((class color) (min-colors 257)) (:foreground "#ff869a")) (((class color) (min-colors 256)) (:foreground "#ff869a")) (((class color) (min-colors 16)) (:foreground "brightmagenta"))))
 '(which-key-command-description-face ((((class color) (min-colors 257)) (:foreground "#82b1ff")) (((class color) (min-colors 256)) (:foreground "#82b1ff")) (((class color) (min-colors 16)) (:foreground "brightblue"))))
 '(which-key-local-map-description-face ((((class color) (min-colors 257)) (:foreground "#c792ea")) (((class color) (min-colors 256)) (:foreground "#c792ea")) (((class color) (min-colors 16)) (:foreground "magenta"))))
 '(outline-1 ((t (:inherit org-level-1))))
 '(outline-2 ((t (:inherit org-level-2))))
 '(outline-3 ((t (:inherit org-level-3))))
 '(outline-4 ((t (:inherit org-level-4))))
 '(outline-5 ((t (:inherit org-level-5))))
 '(outline-6 ((t (:inherit org-level-6))))
 '(outline-7 ((t (:inherit org-level-7))))
 '(outline-8 ((t (:inherit org-level-8))))
 '(web-mode-doctype-face ((((class color) (min-colors 257)) (:foreground "#697098")) (((class color) (min-colors 256)) (:foreground "#525252")) (((class color) (min-colors 16)) (:foreground "brightblack"))))
 '(web-mode-html-tag-face ((t (:foreground "#ff5370"))))
 '(web-mode-html-attr-name-face ((t (:foreground "#ffcb6b"))))
 '(web-mode-html-entity-face ((((class color) (min-colors 257)) (:foreground "#C3E88D" :inherit italic)) (((class color) (min-colors 256)) (:foreground "#C3E88D" :inherit italic)) (((class color) (min-colors 16)) (:foreground "brightcyan" :inherit italic))))
 '(web-mode-block-control-face ((((class color) (min-colors 257)) (:foreground "#ffcb6b")) (((class color) (min-colors 256)) (:foreground "#F78C6C")) (((class color) (min-colors 16)) (:foreground "brightred"))))
 '(web-mode-html-tag-bracket-face ((((class color) (min-colors 257)) (:foreground "#82b1ff")) (((class color) (min-colors 256)) (:foreground "#82b1ff")) (((class color) (min-colors 16)) (:foreground "brightblue"))))
 '(font-lock-comment-face ((((class color) (min-colors 257)) (:slant italic :background nil :foreground "#697098")) (((class color) (min-colors 256)) (:background nil :foreground "#525252")) (((class color) (min-colors 16)) (:background nil :foreground "brightblack"))))
 '(font-lock-doc-face ((((class color) (min-colors 257)) (:slant italic :foreground "#8e93b1" :inherit font-lock-comment-face)) (((class color) (min-colors 256)) (:foreground "#7d7d7d" :inherit font-lock-comment-face)) (((class color) (min-colors 16)) (:foreground "brightblack" :inherit font-lock-comment-face))))
 '(mode-line ((((class color) (min-colors 257)) (:box nil :foreground nil :background "#181A1F")) (((class color) (min-colors 256)) (:box nil :foreground nil :background "black")) (((class color) (min-colors 16)) (:box nil :foreground nil :background "black"))))
 '(mode-line-inactive ((t (:background "#292D3E" :foreground "#697098" :box nil))))
 '(mode-line-emphasis ((((class color) (min-colors 257)) (:foreground "#ff869a")) (((class color) (min-colors 256)) (:foreground "#ff869a")) (((class color) (min-colors 16)) (:foreground "brightmagenta"))))
 '(web-mode-css-property-name-face ((t (:foreground "#ffcb6b" :inherit font-lock-variable-name-face))))
 '(web-mode-css-selector-face ((t (:inherit font-lock-keyword-face :foreground "#ff5370"))))
 '(web-mode-css-variable-face ((t (:inherit web-mode-variable-name-face :foreground "#bfc7d5" :slant italic))))
 '(web-mode-css-function-face ((t (:inherit font-lock-builtin-face :foreground "#82b1ff"))))
 '(web-mode-css-priority-face ((t (:inherit (font-lock-builtin-face)))))
 '(js2-function-call ((t (:foreground "#89DDFF"))))
 '(js2-external-variable ((t (:foreground "#bfc7d5"))))
 '(js2-jsdoc-tag ((t (:foreground "#697098" :slant italic))))
 '(js2-jsdoc-value ((t (:foreground "PeachPuff3" :slant italic))))
 '(js2-jsdoc-type ((t (:foreground "#697098" :slant italic))))
 '(js2-jsdoc-html-tag-delimiter ((((class color) (min-colors 88) (background light)) (:foreground "dark khaki")) (((class color) (min-colors 8) (background dark)) (:foreground "green")) (((class color) (min-colors 8) (background light)) (:foreground "green"))))
 '(js2-jsdoc-html-tag-name ((((class color) (min-colors 88) (background light)) (:foreground "rosybrown")) (((class color) (min-colors 8) (background dark)) (:foreground "yellow")) (((class color) (min-colors 8) (background light)) (:foreground "magenta"))))
 '(underline ((t (:underline (:color foreground-color :style line)))))
 '(spaceline-evil-normal ((t (:background "#ffcb6b" :foreground "#3E3D31" :inherit (quote mode-line)))))
 '(spaceline-read-only ((t (:inherit (quote mode-line) :foreground "#3E3D31" :background "plum3"))))
 '(spaceline-evil-visual ((t (:inherit (quote mode-line) :foreground "#3E3D31" :background "gray"))))
 '(spaceline-flycheck-info ((t (:distant-foreground "#21889B" :foreground "#8DE6F7"))))
 '(spaceline-evil-emacs ((t (:inherit (quote mode-line) :foreground "#3E3D31" :background "SkyBlue2"))))
 '(spaceline-modified ((t (:inherit (quote mode-line) :foreground "#3E3D31" :background "SkyBlue2"))))
 '(spaceline-flycheck-error ((t (:distant-foreground "#A20C41" :foreground "#FC5C94"))))
 '(spaceline-evil-motion ((t (:inherit (quote mode-line) :foreground "#3E3D31" :background "plum3"))))
 '(spaceline-unmodified ((t (:inherit (quote mode-line) :foreground "#3E3D31" :background "DarkGoldenrod2"))))
 '(spaceline-evil-insert ((t (:inherit (quote mode-line) :foreground "#3E3D31" :background "#C3E88D"))))
 '(spaceline-highlight-face ((t (:inherit (quote mode-line) :foreground "#3E3D31" :background "DarkGoldenrod2"))))
 '(spaceline-python-venv ((t (:distant-foreground "DarkMagenta" :foreground "plum1"))))
 '(magit-section-highlight ((t (:background "#33384d"))))
 '(magit-section-heading ((t (:foreground "#ffcb6b" :weight bold))))
 '(magit-section-secondary-heading ((t (:weight bold))))
 '(magit-section-heading-selection ((((class color) (background light)) (:foreground "salmon4")) (((class color) (background dark)) (:foreground "LightSalmon3"))))
 '(magit-branch-remote ((t (:foreground "#C3E88D"))))
 '(magit-branch-local ((t (:foreground "#82b1ff"))))
 '(magit-diff-hunk-heading-highlight ((t (:background "#4B5263"))))
 '(magit-diff-hunk-heading ((t (:background "#4B5263"))))
 '(magit-diff-hunk-heading-selection ((t (:inherit magit-diff-hunk-heading-highlight :foreground "#ff869a"))))
 '(magit-diff-base ((t (:background "#3E4452" :foreground "#ffffff"))))
 '(magit-diff-context-highlight ((t (:background "#4B5263" :foreground "#ffffff"))))
 '(magit-diff-added ((t (:background "#3c4c38" :foreground "#ffffff"))))
 '(magit-diff-removed ((t (:background "#482424" :foreground "#ffffff"))))
 '(magit-diff-added-highlight ((t (:background "#4d7543" :foreground "#ffffff"))))
 '(magit-diff-removed-highlight ((t (:background "#663333" :foreground "#ffffff"))))
 '(default ((t (:background "#292D3E" :foreground "#bfc7d5"))))
 '(org-level-1 ((t (:foreground "#c792ea" :weight bold :height 1.2))))
 '(org-level-2 ((t (:foreground "#ff5370" :weight bold :height 1.1))))
 '(org-level-3 ((t (:foreground "#ffcb6b"))))
 '(org-level-4 ((t (:foreground "#82b1ff"))))
 '(org-level-5 ((t (:foreground "#ff869a"))))
 '(org-level-6 ((t (:inherit (outline-6)))))
 '(org-level-7 ((t (:inherit (outline-7)))))
 '(org-table ((((class color) (min-colors 88) (background light)) (:foreground "Blue1")) (((class color) (min-colors 88) (background dark)) (:foreground "LightSkyBlue")) (((class color) (min-colors 16) (background light)) (:foreground "Blue")) (((class color) (min-colors 16) (background dark)) (:foreground "LightSkyBlue")) (((class color) (min-colors 8) (background light)) (:foreground "blue")) (((class color) (min-colors 8) (background dark)) nil)))
 '(org-todo ((t (:foreground "#89DDFF" :weight bold))))
 '(org-done ((t (:foreground "#C3E88D" :weight bold)))))

(provide-theme 'palenight)

