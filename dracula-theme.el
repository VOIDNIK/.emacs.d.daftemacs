;;; dracula-theme.el --- Dracula Theme

;; Copyright 2015-present, All rights reserved
;;
;; Code licensed under the MIT license

;; Author: film42
;; Version: 1.5.1
;; Package-Requires: ((emacs "24"))
;; URL: https://github.com/dracula/emacs

;;; Commentary:

;; A dark color theme available for a number of editors.

;;; Code:
(require 'cl-lib)
(deftheme dracula)

(let ((colors '((fg1          "#f8f8f2")      ; Assigment form: VARIABLE COLOR [TTY-COLOR]
                (fg2          "#e2e2dc")
                (fg3          "#ccccc7")
                (fg4          "#b6b6b2")
                (bg-default   "#16181f")
                (bg-darker    "#0e1014")
                (bg2          "#373844")
                (bg3          "#464752")
                (bg4          "#565761")
                (bg5          "#44475a")
                (key2         "#0189cc")
                (key3         "#ff79c6")
                (builtin      "#ffb86c")
                (keyword      "#ff79c6")
                (const        "#8be9fd")
                (comment      "#6272a4")
                (func         "#50fa7b")
                (str          "#f1fa8c")
                (type         "#bd93f9")
                (var          "#f8f8f2")
                (warning      "#ffb86c")
                (rainbow-1    "#f8f8f2")
                (rainbow-2    "#8be9fd")
                (rainbow-3    "#bd93f9")
                (rainbow-4    "#ff79c6")
                (rainbow-5    "#ffb86c")
                (rainbow-6    "#50fa7b")
                (rainbow-7    "#f1fa8c")
                (rainbow-8    "#0189cc")
                (rainbow-9    "#ff5555")
                (rainbow-10   "#a0522d")
                (eph-verbatim "#f1fa8c")
                (eph-code     "#ff79c6")
                (hl           "#2e2e38")
                (ml-a-fg      "#ffffff")
                (ml-a-bg      "#0177b2")
                (ml-i-fg      "#838381")
                (ml-i-bg      "#23252f")
                (pl-bg        "#b45bcf")
                (md-hl        "#22242a")
                (ivy-posframe-bg "#202027")))
      (faces '(;; default
               (cursor :background ,fg3)
               (default :background ,bg-default :foreground ,fg1)
               (default-italic :italic t)
               (ffap :foreground ,fg4)
               (fringe :background ,bg-default :foreground ,fg4)
               (highlight :foreground ,fg3 :background ,bg3)
               (hl-line :background ,hl :extend t)
               (info-quoted-name :foreground ,builtin)
               (info-string :foreground ,str)
               (lazy-highlight :foreground ,fg2 :background ,bg3)
               (link :foreground ,const :underline t)
               (linum :slant italic :foreground ,bg4 :background ,bg-default)
               (line-number :slant italic :foreground ,bg4 :background ,bg-default)
               (minibuffer-prompt :bold t :foreground ,keyword)
               (region :background ,str :foreground ,bg-default :extend t)
               (show-paren-match-face :background ,warning)
               (trailing-whitespace :foreground nil :background ,warning)
               (vertical-border :foreground ,bg2)
               (warning :foreground ,warning)
               (whitespace-trailing :inherit trailing-whitespace)
               (header-line :background ,bg-default)
               ;; syntax
               (font-lock-builtin-face :foreground ,builtin)
               (font-lock-comment-face :foreground ,comment)
               (font-lock-constant-face :foreground ,const)
               (font-lock-doc-face :foreground ,comment)
               (font-lock-function-name-face :foreground ,func :bold t)
               (font-lock-keyword-face :bold t :foreground ,keyword)
               (font-lock-negation-char-face :foreground ,const)
               (font-lock-reference-face :foreground ,const)
               (font-lock-string-face :foreground ,str)
               (font-lock-type-face :foreground ,type )
               (font-lock-variable-name-face :foreground ,var)
               (font-lock-warning-face :foreground ,warning :background ,bg2)
               ;; auto-complete
               (ac-completion-face :underline t :foreground ,keyword)
               ;; company
               (company-echo-common :foreground ,bg-default :background ,fg1)
               (company-preview :background ,bg-default :foreground ,key2)
               (company-preview-common :foreground ,bg2 :foreground ,fg3)
               (company-preview-search :foreground ,type :background ,bg-default)
               (company-scrollbar-bg :background ,bg3)
               (company-scrollbar-fg :foreground ,keyword)
               (company-template-field :inherit region)
               (company-tooltip :foreground ,fg2 :background ,bg-default :bold t)
               (company-tooltip-annotation :foreground ,const)
               (company-tooltip-common  :foreground ,fg3)
               (company-tooltip-common-selection :foreground ,str)
               (company-tooltip-mouse :inherit highlight)
               (company-tooltip-selection :background ,bg3 :foreground ,fg3)
               ;; diff-hl
               (diff-hl-change :foreground ,rainbow-5 :background ,rainbow-5)
               (diff-hl-delete :foreground ,rainbow-9 :background ,rainbow-9)
               (diff-hl-insert :foreground ,rainbow-6 :background ,rainbow-6)
               ;; enh-ruby
               (enh-ruby-heredoc-delimiter-face :foreground ,str)
               (enh-ruby-op-face :foreground ,keyword)
               (enh-ruby-regexp-delimiter-face :foreground ,str)
               (enh-ruby-string-delimiter-face :foreground ,str)
               ;; font-latex
               (font-latex-bold-face :foreground ,type)
               (font-latex-italic-face :foreground ,key3 :italic t)
               (font-latex-match-reference-keywords :foreground ,const)
               (font-latex-match-variable-keywords :foreground ,var)
               (font-latex-string-face :foreground ,str)
               ;; gnus-group
               (gnus-group-mail-1 :foreground ,keyword :bold t)
               (gnus-group-mail-1-empty :inherit gnus-group-mail-1 :bold nil)
               (gnus-group-mail-2 :foreground ,const :bold t)
               (gnus-group-mail-2-empty :inherit gnus-group-mail-2 :bold nil)
               (gnus-group-mail-3 :foreground ,comment :bold t)
               (gnus-group-mail-3-empty :inherit gnus-group-mail-3 :bold nil)
               (gnus-group-mail-low :foreground ,bg5 :bold t)
               (gnus-group-mail-low-empty :inherit gnus-group-mail-low :bold nil)
               (gnus-group-news-1 :foreground ,keyword :bold t)
               (gnus-group-news-1-empty :inherit gnus-group-news-1 :bold nil)
               (gnus-group-news-2 :foreground ,const :bold t)
               (gnus-group-news-2-empty :inherit gnus-group-news-2 :bold nil)
               (gnus-group-news-3 :foreground ,comment :bold t)
               (gnus-group-news-3-empty :inherit gnus-group-news-3 :bold nil)
               (gnus-group-news-4 :inherit gnus-group-news-low)
               (gnus-group-news-4-empty :inherit gnus-group-news-low-empty)
               (gnus-group-news-5 :inherit gnus-group-news-low)
               (gnus-group-news-5-empty :inherit gnus-group-news-low-empty)
               (gnus-group-news-6 :inherit gnus-group-news-low)
               (gnus-group-news-6-empty :inherit gnus-group-news-low-empty)
               (gnus-group-news-low :foreground ,bg5 :bold t)
               (gnus-group-news-low-empty :inherit gnus-group-news-low :bold nil)
               (gnus-header-content :foreground ,keyword)
               (gnus-header-from :foreground ,var)
               (gnus-header-name :foreground ,type)
               (gnus-header-subject :foreground ,func :bold t)
               (gnus-summary-markup-face :foreground ,const)
               (gnus-summary-high-unread :foreground ,keyword :weight bold)
               (gnus-summary-high-read :inherit gnus-summary-high-unread :weight normal)
               (gnus-summary-high-ancient :inherit gnus-summary-high-read)
               (gnus-summary-high-ticked :inherit gnus-summary-high-read :underline t)
               (gnus-summary-normal-unread :foreground ,key2 :weight bold)
               (gnus-summary-normal-read :inherit gnus-summary-normal-unread :weight normal)
               (gnus-summary-normal-ancient :inherit gnus-summary-normal-read)
               (gnus-summary-normal-ticked :inherit gnus-summary-normal-read :underline t)
               (gnus-summary-low-unread :foreground ,comment :weight bold)
               (gnus-summary-low-read :inherit gnus-summary-low-unread :weight normal)
               (gnus-summary-low-ancient :inherit gnus-summary-low-read)
               (gnus-summary-low-ticked :inherit gnus-summary-low-read :underline t)
               (gnus-summary-selected :inverse-video t)
               ;; helm
               (helm-bookmark-w3m :foreground ,type)
               (helm-buffer-not-saved :foreground ,type :background ,bg-default)
               (helm-buffer-process :foreground ,builtin :background ,bg-default)
               (helm-buffer-saved-out :foreground ,fg1 :background ,bg-default)
               (helm-buffer-size :foreground ,fg1 :background ,bg-default)
               (helm-candidate-number :foreground ,bg-default :background ,fg1)
               (helm-ff-directory :foreground ,func :background ,bg-default :weight bold)
               (helm-ff-executable :foreground ,key2 :background ,bg-default :weight normal)
               (helm-ff-file :foreground ,fg1 :background ,bg-default :weight normal)
               (helm-ff-invalid-symlink :foreground ,key3 :background ,bg-default :weight bold)
               (helm-ff-prefix :foreground ,bg-default :background ,keyword :weight normal)
               (helm-ff-symlink :foreground ,keyword :background ,bg-default :weight bold)
               (helm-grep-cmd-line :foreground ,fg1 :background ,bg-default)
               (helm-grep-file :foreground ,fg1 :background ,bg-default)
               (helm-grep-finish :foreground ,fg2 :background ,bg-default)
               (helm-grep-lineno :foreground ,fg1 :background ,bg-default)
               (helm-grep-match :foreground nil :background nil :inherit helm-match)
               (helm-grep-running :foreground ,func :background ,bg-default)
               (helm-header :foreground ,fg2 :background ,bg-default :underline nil :box nil)
               (helm-moccur-buffer :foreground ,func :background ,bg-default)
               (helm-selection :background ,bg2 :underline nil)
               (helm-selection-line :background ,bg2)
               (helm-separator :foreground ,type :background ,bg-default)
               (helm-source-go-package-godoc-description :foreground ,str)
               (helm-source-header :foreground ,keyword :background ,bg-default :underline nil :weight bold)
               (helm-time-zone-current :foreground ,builtin :background ,bg-default)
               (helm-time-zone-home :foreground ,type :background ,bg-default)
               (helm-visible-mark :foreground ,bg-default :background ,bg3)
               ;; highlight-indentation minor mode
               (highlight-indentation-face :background ,bg2)
               ;; icomplete
               (icompletep-determined :foreground ,builtin)
               ;; ido
               (ido-first-match :foreground ,keyword :bold t)
               (ido-only-match :foreground ,warning)
               (ido-subdir :foreground ,builtin)
               ;; isearch
               (isearch :bold t :foreground ,warning :background ,bg3)
               (isearch-fail :foreground ,bg-default :background ,warning)
               ;; jde-java
               (jde-java-font-lock-constant-face :foreground ,const)
               (jde-java-font-lock-modifier-face :foreground ,key3)
               (jde-java-font-lock-number-face :foreground ,var)
               (jde-java-font-lock-package-face :foreground ,var)
               (jde-java-font-lock-private-face :foreground ,keyword)
               (jde-java-font-lock-public-face :foreground ,keyword)
               ;; js2-mode
               (js2-external-variable :foreground ,type  )
               (js2-function-param :foreground ,const)
               (js2-jsdoc-html-tag-delimiter :foreground ,str)
               (js2-jsdoc-html-tag-name :foreground ,key2)
               (js2-jsdoc-value :foreground ,str)
               (js2-private-function-call :foreground ,const)
               (js2-private-member :foreground ,fg3)
               ;; js3-mode
               (js3-error-face :underline ,warning)
               (js3-external-variable-face :foreground ,var)
               (js3-function-param-face :foreground ,key3)
               (js3-instance-member-face :foreground ,const)
               (js3-jsdoc-tag-face :foreground ,keyword)
               (js3-warning-face :underline ,keyword)
               ;; magit
               (magit-branch :foreground ,const :weight bold)
               (magit-diff-file-header :foreground ,fg2 :background ,bg3)
               (magit-diff-context-highlight :foreground ,fg3 :background ,md-hl)
               (magit-diff-added-highlight :foreground ,rainbow-6 :background ,md-hl)
               (magit-diff-removed-highlight :foreground ,rainbow-9 :background ,md-hl)
               (magit-diff-added :foreground ,rainbow-6 :background ,bg-default)
               (magit-diff-removed :foreground ,rainbow-9 :background ,bg-default)
               (magit-diffstat-added :foreground ,type)
               (magit-diffstat-removed :foreground ,var)
               (magit-hash :foreground ,fg2)
               (magit-hunk-heading :background ,bg3)
               (magit-hunk-heading-highlight :background ,bg3)
               (magit-item-highlight :background ,bg3)
               (magit-log-author :foreground ,fg3)
               (magit-process-ng :foreground ,warning :weight bold)
               (magit-process-ok :foreground ,func :weight bold)
               (magit-section-heading :foreground ,keyword :weight bold)
               (magit-section-highlight :background ,bg2)
               ;; mode-line
               (mode-line :foreground ,ml-a-fg :background ,ml-a-bg :box ,ml-a-bg)
               (mode-line-inactive :foreground ,ml-i-fg :background ,ml-i-bg :box ,ml-i-bg)
               ;; mu4e
               (mu4e-cited-1-face :foreground ,fg2)
               (mu4e-cited-7-face :foreground ,fg3)
               (mu4e-header-marks-face :foreground ,type)
               (mu4e-view-url-number-face :foreground ,type)
               ;; org
               (org-agenda-date :foreground ,rainbow-2 :underline nil)
               (org-agenda-dimmed-todo-face :foreground ,comment)
               (org-agenda-done :foreground ,rainbow-6)
               (org-agenda-structure :foreground ,rainbow-3)
               (org-block :foreground ,rainbow-5 :background ,bg-darker :extend t)
               (org-code :foreground ,rainbow-7 :extend t)
               (org-column :background ,bg4)
               (org-column-title :inherit org-column :weight bold :underline t)
               (org-date :foreground ,rainbow-2 :underline t)
               (org-document-info :foreground ,rainbow-8)
               (org-document-info-keyword :foreground ,comment)
               (org-document-title :weight bold :foreground ,rainbow-5 :height 1.44)
               (org-done :foreground ,rainbow-6)
               (org-ellipsis :foreground ,comment)
               (org-footnote :foreground ,rainbow-8)
               (org-formula :foreground ,rainbow-4)
               (org-headline-done :foreground ,comment :bold nil :strike-through t)
               (org-hide :foreground ,bg-default :background ,bg-default)
               (org-level-1 :inherit bold :foreground ,rainbow-4 :height 1.3)
               (org-level-2 :inherit bold :foreground ,rainbow-3 :height 1.1)
               (org-level-3 :bold nil :foreground ,rainbow-6 :height 1.0)
               (org-level-4 :bold nil :foreground ,rainbow-7)
               (org-level-5 :bold nil :foreground ,rainbow-2)
               (org-level-6 :bold nil :foreground ,rainbow-5)
               (org-level-7 :bold nil :foreground ,rainbow-8)
               (org-level-8 :bold nil :foreground ,rainbow-1)
               (org-link :foreground ,rainbow-2 :underline t)
               (org-priority :foreground ,rainbow-2)
               (org-scheduled :foreground ,rainbow-6)
               (org-scheduled-previously :foreground ,rainbow-7)
               (org-scheduled-today :foreground ,rainbow-6)
               (org-sexp-date :foreground ,fg4)
               (org-special-keyword :foreground ,rainbow-7)
               (org-table :foreground ,rainbow-3)
               (org-tag :foreground ,rainbow-4 :bold t :background ,bg2)
               (org-todo :foreground ,rainbow-5 :bold t :background ,bg2)
               (org-upcoming-deadline :foreground ,rainbow-7)
               (org-warning :weight bold :foreground ,rainbow-4)
               ;; outline
               (outline-1 :foreground ,rainbow-6)
               (outline-2 :foreground ,rainbow-3)
               (outline-3 :foreground ,rainbow-2)
               (outline-4 :foreground ,rainbow-5)
               (outline-5 :foreground ,rainbow-5)
               (outline-6 :foreground ,rainbow-8)
               ;; powerline
               (powerline-evil-base-face :foreground ,bg2)
               (powerline-evil-emacs-face :inherit powerline-evil-base-face :background ,rainbow-7)
               (powerline-evil-insert-face :inherit powerline-evil-base-face :background ,rainbow-2)
               (powerline-evil-motion-face :inherit powerline-evil-base-face :background ,rainbow-3)
               (powerline-evil-normal-face :inherit powerline-evil-base-face :background ,rainbow-6)
               (powerline-evil-operator-face :inherit powerline-evil-base-face :background ,rainbow-4)
               (powerline-evil-replace-face :inherit powerline-evil-base-face :background ,rainbow-9)
               (powerline-evil-visual-face :inherit powerline-evil-base-face :background ,rainbow-5)
               (powerline-active1 :background ,pl-bg :foreground ,fg1)
               (powerline-active2 :background ,pl-bg :foreground ,fg1)
               (powerline-inactive2 :background ,bg3 :foreground ,fg1)
               (powerline-inactive2 :background ,bg3 :foreground ,fg1)
               ;; rainbow-delimiters
               (rainbow-delimiters-depth-1-face :foreground ,rainbow-1)
               (rainbow-delimiters-depth-2-face :foreground ,rainbow-2)
               (rainbow-delimiters-depth-3-face :foreground ,rainbow-3)
               (rainbow-delimiters-depth-4-face :foreground ,rainbow-4)
               (rainbow-delimiters-depth-5-face :foreground ,rainbow-5)
               (rainbow-delimiters-depth-6-face :foreground ,rainbow-6)
               (rainbow-delimiters-depth-7-face :foreground ,rainbow-7)
               (rainbow-delimiters-depth-8-face :foreground ,rainbow-8)
               (rainbow-delimiters-unmatched-face :foreground ,warning)
               ;; rpm-spec
               (rpm-spec-dir-face :foreground ,rainbow-6)
               (rpm-spec-doc-face :foreground ,rainbow-4)
               (rpm-spec-ghost-face :foreground ,rainbow-3)
               (rpm-spec-macro-face :foreground ,rainbow-7)
               (rpm-spec-obsolete-tag-face :inherit font-lock-warning-face)
               (rpm-spec-package-face :foreground ,rainbow-3)
               (rpm-spec-section-face :foreground ,rainbow-7)
               (rpm-spec-tag-face :foreground ,rainbow-2)
               (rpm-spec-var-face :foreground ,rainbow-10)
               ;; slime
               (slime-repl-inputed-output-face :foreground ,type)
               ;; spam
               (spam :inherit gnus-summary-normal-read :foreground ,warning :strike-through t :slant oblique)
               ;; term
               (term :foreground ,fg1 :background ,bg-default)
               (term-color-black :foreground ,bg3 :background ,bg3)
               (term-color-blue :foreground ,type :background ,type)
               (term-color-cyan :foreground ,const :background ,const)
               (term-color-green :foreground ,func :background ,func)
               (term-color-magenta :foreground ,keyword :background ,keyword)
               (term-color-red :foreground ,rainbow-9 :background ,rainbow-9)
               (term-color-white :foreground ,fg2 :background ,fg2)
               (term-color-yellow :foreground ,str :background ,str)
               ;; undo-tree
               (undo-tree-visualizer-current-face :foreground ,builtin)
               (undo-tree-visualizer-default-face :foreground ,fg2)
               (undo-tree-visualizer-register-face :foreground ,type)
               (undo-tree-visualizer-unmodified-face :foreground ,var)
               ;; web-mode
               (web-mode-builtin-face :inherit ,font-lock-builtin-face)
               (web-mode-comment-face :inherit ,font-lock-comment-face)
               (web-mode-constant-face :inherit ,font-lock-constant-face)
               (web-mode-doctype-face :inherit ,font-lock-comment-face)
               (web-mode-function-name-face :inherit ,font-lock-function-name-face)
               (web-mode-html-attr-name-face :foreground ,type)
               (web-mode-html-attr-value-face :foreground ,func)
               (web-mode-html-tag-face :foreground ,keyword :bold t)
               (web-mode-keyword-face :foreground ,keyword)
               (web-mode-string-face :foreground ,str)
               (web-mode-type-face :inherit ,font-lock-type-face)
               (web-mode-warning-face :inherit ,font-lock-warning-face)
               ;; ivy-posframe
               (ivy-posframe :foreground ,fg1 :background ,ivy-posframe-bg)
               (ivy-posframe-border :foreground ,fg1 :background ,ivy-posframe-bg)
               ;; treemacs
               (treemacs-git-modified-face :foreground ,rainbow-3)
               (treemacs-git-renamed-face :foreground ,rainbow-4)
               (treemacs-git-ignored-face :foreground ,comment)
               (treemacs-git-untracked-face :foreground ,rainbow-7)
               (treemacs-git-added-face :foreground ,rainbow-5)
               (treemacs-git-conflict-face :foreground ,rainbow-9)
               ;; which-func
               (which-func :inherit ,font-lock-function-name-face)
               (dired-directory :foreground ,func :weight normal)
               (dired-flagged :foreground ,keyword)
               (dired-header :foreground ,fg3 :background ,bg-default)
               (dired-ignored :inherit shadow)
               (dired-mark :foreground ,var :weight bold)
               (dired-marked :foreground ,builtin :weight bold)
               (dired-perm-write :foreground ,fg3 :underline t)
               (dired-symlink :foreground ,str :weight normal :slant italic)
               (dired-warning :foreground ,warning :underline t)
               (diredp-compressed-file-name :foreground ,fg3)
               (diredp-compressed-file-suffix :foreground ,fg4)
               (diredp-date-time :foreground ,var)
               (diredp-deletion-file-name :foreground ,keyword :background ,bg5)
               (diredp-deletion :foreground ,keyword :weight bold)
               (diredp-dir-heading :foreground ,fg2 :background ,bg4)
               (diredp-dir-name :inherit dired-directory)
               (diredp-dir-priv :inherit dired-directory)
               (diredp-executable-tag :foreground ,builtin)
               (diredp-file-name :foreground ,fg1)
               (diredp-file-suffix :foreground ,fg4)
               (diredp-flag-mark-line :foreground ,fg2 :slant italic :background ,bg5)
               (diredp-flag-mark :foreground ,fg2 :weight bold :background ,bg5)
               (diredp-ignored-file-name :foreground ,fg1)
               (diredp-mode-line-flagged :foreground ,warning)
               (diredp-mode-line-marked :foreground ,warning)
               (diredp-no-priv :foreground ,fg1)
               (diredp-number :foreground ,const)
               (diredp-other-priv :foreground ,builtin)
               (diredp-rare-priv :foreground ,builtin)
               (diredp-read-priv :foreground ,type)
               (diredp-write-priv :foreground ,keyword)
               (diredp-exec-priv :foreground ,str)
               (diredp-symlink :foreground ,warning)
               (diredp-link-priv :foreground ,warning)
               (diredp-autofile-name :foreground ,str)
               (diredp-tagged-autofile-name :foreground ,str)
               (icicle-whitespace-highlight :background ,var)
               (icicle-special-candidate :foreground ,fg2)
               (icicle-extra-candidate :foreground ,fg2)
               (icicle-search-main-regexp-others :foreground ,var)
               (icicle-search-current-input :foreground ,keyword)
               (icicle-search-context-level-8 :foreground ,warning)
               (icicle-search-context-level-7 :foreground ,warning)
               (icicle-search-context-level-6 :foreground ,warning)
               (icicle-search-context-level-5 :foreground ,warning)
               (icicle-search-context-level-4 :foreground ,warning)
               (icicle-search-context-level-3 :foreground ,warning)
               (icicle-search-context-level-2 :foreground ,warning)
               (icicle-search-context-level-1 :foreground ,warning)
               (icicle-search-main-regexp-current :foreground ,fg1)
               (icicle-saved-candidate :foreground ,fg1)
               (icicle-proxy-candidate :foreground ,fg1)
               (icicle-mustmatch-completion :foreground ,type)
               (icicle-multi-command-completion :foreground ,fg2 :background ,bg2)
               (icicle-msg-emphasis :foreground ,func)
               (icicle-mode-line-help :foreground ,fg4)
               (icicle-match-highlight-minibuffer :foreground ,builtin)
               (icicle-match-highlight-Completions :foreground ,func)
               (icicle-key-complete-menu-local :foreground ,fg1)
               (icicle-key-complete-menu :foreground ,fg1)
               (icicle-input-completion-fail-lax :foreground ,keyword)
               (icicle-input-completion-fail :foreground ,keyword)
               (icicle-historical-candidate-other :foreground ,fg1)
               (icicle-historical-candidate :foreground ,fg1)
               (icicle-current-candidate-highlight :foreground ,warning :background ,bg3)
               (icicle-Completions-instruction-2 :foreground ,fg4)
               (icicle-Completions-instruction-1 :foreground ,fg4)
               (icicle-completion :foreground ,var)
               (icicle-complete-input :foreground ,builtin)
               (icicle-common-match-highlight-Completions :foreground ,type)
               (icicle-candidate-part :foreground ,var)
               (icicle-annotation :foreground ,fg4))))

  (apply #'custom-theme-set-faces
         'dracula
         (let ((color-names (mapcar #'car colors))
               (graphic-colors (mapcar #'cadr colors))
               (tty-colors (mapcar #'car (mapcar #'last colors))))
           (cl-flet* ((expand-for-tty (spec) (cl-progv color-names tty-colors
                                               (eval `(backquote ,spec))))
                      (expand-for-graphic (spec) (cl-progv color-names graphic-colors
                                                   (eval `(backquote ,spec)))))
             (cl-loop for (face . spec) in faces
                      collect `(,face
                                ((((min-colors 16777216))
                                  ,(expand-for-graphic spec))
                                 (t
                                  ,(expand-for-tty spec)))))))))


;; mode-line

(defcustom dracula-use-paddings-in-mode-line t
  "When non-nil, use top and bottom paddings in the mode-line."
  :type 'boolean)

(defface dracula-ro-face
  '((t :foreground "#0088CC" :weight bold))
  "Face for read-only buffer in the mode-line.")

(defface dracula-ok-face
  '((t :foreground "#61afef"))
  "Face for ok status in the mode-line.")

(defface dracula-warning-face
  '((t :foreground "#da8548"))
  "Face for warning status in the mode-line.")

(defface dracula-error-face
  '((t :foreground "#ff6c6b"))
  "Face for error status in the mode-line.")

;; So the mode-line can keep track of "the current window"
(defvar dracula-selected-window nil
  "Selected window.")

(defun true-color-p ()
  "Return non-nil on displays that support 256 colors."
  (or
   (display-graphic-p)
   (= (tty-display-color-cells) 16777216)))

(defmacro cached-for (secs &rest body)
  "Cache for SECS the result of the evaluation of BODY."
  (declare (debug t))
  (let ((cache (make-symbol "cache"))
        (last-run (make-symbol "last-run")))
    `(let (,cache ,last-run)
       (lambda ()
         (when (or (null ,last-run)
                   (> (- (time-to-seconds (current-time)) ,last-run)
                      ,secs))
           (setf ,cache (progn ,@body))
           (setf ,last-run (time-to-seconds (current-time))))
         ,cache))))

(defun dracula--active-window-p ()
  "Return non-nil if the current window is active."
  (eq (selected-window) dracula-selected-window))

(defvar dracula-modeline-ro '(:eval (if buffer-read-only
                                         (if (dracula--active-window-p)
                                             (progn
                                               (propertize "RO " 'face 'dracula-ro-face))
                                           (propertize "RO " 'face 'bold))
                                       "")))

(defvar dracula-buffer-coding '(:eval (unless (eq buffer-file-coding-system (default-value 'buffer-file-coding-system))
                                         mode-line-mule-info)))

(defvar dracula-modeline-modified '(:eval (if (buffer-modified-p (current-buffer))
                                              (if (display-graphic-p)
                                                  (all-the-icons-faicon "floppy-o"
                                                                        :height 0.9
                                                                        :v-adjust 0)
                                                "*")
                                            (if (display-graphic-p)
                                                (all-the-icons-faicon "check"
                                                                      :height 0.9
                                                                      :v-adjust 0)
                                              ""))))

(defvar dracula-modeline-buffer-identification '(:eval (propertize "%b" 'face 'bold))
  "Mode line construct for displaying the position in the buffer.")

(defvar dracula-modeline-position '(:eval (propertize " %l:%c %p "))
  "Mode line construct for displaying the position in the buffer.")

(defcustom dracula-theme-display-vc-status 'full
  "Control how version control information is displayed."
  :type '(choice (const :tag "Display fork symbol and branch name" 'full)
                 (const :tag "Display fork symbol only" t)
                 (const :tag "Do not display any version control information" nil)))

(defvar dracula--git-face-cached (cached-for 1 (dracula--git-face-intern)))

(defun dracula--git-face-intern ()
  "Return the face to use based on the current repository status."
  (if (magit-git-success "diff" "--quiet")
      ;; nothing to commit because nothing changed
      (if (zerop (length (magit-git-string
                          "rev-list" (concat "origin/"
                                             (magit-get-current-branch)
                                             ".."
                                             (magit-get-current-branch)))))
          ;; nothing to push as well
          'dracula-ok-face
        ;; nothing to commit, but some commits must be pushed
        'dracula-warning-face)
    'dracula-error-face))

(defun dracula-git-face ()
  "Return the face to use based on the current repository status.
The result is cached for one second to avoid hiccups."
  (funcall dracula--git-face-cached))

(defvar dracula-modeline-vc '(vc-mode ("   "
                                       (:eval (if (display-graphic-p)
                                                  (all-the-icons-faicon "code-fork"
                                                                        :height 0.9
                                                                        :v-adjust 0
                                                                        :face (when (dracula--active-window-p)
                                                                                (dracula-git-face)))
                                                ""))
                                       (:eval (when (eq dracula-theme-display-vc-status 'full)
                                                (propertize (truncate-string-to-width vc-mode 25 nil nil "...")
                                                            'face (when (dracula--active-window-p)
                                                                    (dracula-git-face))))))))

(defun dracula-face-when-active (face)
  "Return FACE if the window is active."
  (when (dracula--active-window-p)
    face))

(defun dracula-modeline-flycheck-status ()
  "Return the status of flycheck to be displayed in the mode-line."
  (when flycheck-mode
    (let* ((text (pcase flycheck-last-status-change
                   (`finished (if flycheck-current-errors
                                  (let ((count (let-alist (flycheck-count-errors flycheck-current-errors)
                                                 (+ (or .warning 0) (or .error 0)))))
                                    (propertize (format "✖ %s Issue%s" count (if (eq 1 count) "" "s"))
                                                'face (dracula-face-when-active 'dracula-error-face)))
                                (propertize "✔ No Issues"
                                            'face (dracula-face-when-active 'dracula-ok-face))))
                   (`running     (propertize "⟲ Running"
                                             'face (dracula-face-when-active 'dracula-warning-face)))
                   (`no-checker  (propertize "⚠ No Checker"
                                             'face (dracula-face-when-active 'dracula-warning-face)))
                   (`not-checked "✖ Disabled")
                   (`errored     (propertize "⚠ Error"
                                             'face (dracula-face-when-active 'dracula-error-face)))
                   (`interrupted (propertize "⛔ Interrupted"
                                             'face (dracula-face-when-active 'dracula-error-face)))
                   (`suspicious  ""))))
      (propertize text
                  'help-echo "Show Flycheck Errors"
                  'local-map (make-mode-line-mouse-map
                              'mouse-1 #'flycheck-list-errors)))))

;;;###autoload
(defun dracula-setup-modeline-format ()
  "Setup the mode-line format for dracula."
  (interactive)
  (require 'flycheck)
  (require 'magit)
  (if (display-graphic-p)
      (require 'all-the-icons))

  (setq-default mode-line-format
                `("%e"
                  " "
                  ,dracula-modeline-ro " "
                  ,dracula-buffer-coding
                  mode-line-frame-identification " "
                  " "
                  ,dracula-modeline-modified
                  " "
                  ,dracula-modeline-buffer-identification
                  ,dracula-modeline-position
                  ,(if dracula-theme-display-vc-status
                       dracula-modeline-vc
                     "")
                  "  "
                  (:eval (dracula-modeline-flycheck-status))
                  "  "
                  mode-line-modes
                  mode-line-misc-info
                  ;mode-line-end-spaces
                  )))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'dracula)

;; Local Variables:
;; no-byte-compile: t
;; End:

;;; dracula-theme.el ends here
