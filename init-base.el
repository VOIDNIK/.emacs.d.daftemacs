(setq gc-cons-threshold (* 256 1024 1024))
(message "init-gc-cons-threshold: %d" gc-cons-threshold)
(add-hook #'emacs-startup-hook
          (lambda ()
            (setq gc-cons-threshold (* 128 1024 1024))
            (message "normal-gc-cons-threshold: %d" gc-cons-threshold)))
(add-hook 'focus-out-hook #'garbage-collect)

(setq visible-bell t
      make-backup-files nil
      column-number-mode t
      split-height-threshold nil ; not to split this way.
      gdb-many-windows t)
(blink-cursor-mode 0)
(global-hl-line-mode)
(setq-default truncate-lines t)
(put 'erase-buffer 'disabled nil)
(show-paren-mode t)
(delete-selection-mode t)
(require 'cl-lib) ; Common Lisp

(when (string= system-type "darwin")
  (setq dired-use-ls-dired nil))

(global-set-key (kbd "C-x C-b") 'ibuffer)

(defun other-window-reverse ()
  (interactive)
  (other-window -1))
(global-set-key (kbd "C-x p") 'other-window-reverse)

(defun my-shell-hook ()
  (local-set-key "\C-ck" 'erase-buffer))
(add-hook 'shell-mode-hook 'my-shell-hook)

(defun hexl-mode-toggle ()
  (interactive)
  (if (string= "hexl-mode" major-mode)
      (hexl-mode-exit)
    (hexl-mode)))
(global-set-key (kbd "C-c x") 'hexl-mode-toggle)

(defun open-user-init-file ()
  (interactive)
  (find-file-read-only user-init-file))

(defun open-zshrc-file ()
  (interactive)
  (find-file-read-only "~/.zshrc"))

(defun open-i3-config-file ()
  (interactive)
  (find-file-read-only "~/.config/i3/config")
  (find-file-read-only "~/.config/i3status/config"))

;;==============================================================================
;; exec-path
;;==============================================================================

(cond
 ((string-equal system-type "darwin")
  (progn
    (setenv "PATH" (concat (getenv "PATH") ":/usr/local/bin"))
    (setq exec-path (append exec-path '("/usr/local/bin")))
    (setenv "PATH" (concat (getenv "PATH") ":/Library/TeX/texbin"))
    (setq exec-path (append exec-path '("/Library/TeX/texbin")))
    (setenv "PATH" (concat (concat (getenv "PATH") ":") (expand-file-name "~/Library/Android/sdk/platform-tools")))
    (setq exec-path (append exec-path (list (expand-file-name "~/Library/Android/sdk/platform-tools"))))
    ))
 ((string-equal system-type "gnu/linux")
  (progn
    ;reserved
    )))

(setenv "PATH" (concat (concat (getenv "PATH") ":") (expand-file-name "~/Workspace/depot_tools")))
(setq exec-path (append exec-path (list (expand-file-name "~/Workspace/depot_tools"))))

;;==============================================================================
;; Line Numbers
;;==============================================================================

(if (version< emacs-version "26")
    (progn
      (load-file "~/.emacs.d/linum.elc")
      (setq linum-format "%5d \u2502")
      (setq linum-delay t)
      (global-linum-mode)
      (defcustom linum-disabled-modes-list '(eshell-mode wl-summary-mode compilation-mode org-mode text-mode dired-mode doc-view-mode pdf-view-mode)
        "* List of modes disabled when global linum mode is on"
        :type '(repeat (sexp :tag "Major mode"))
        :tag " Major modes where linum is disabled: "
        :group 'linum)
      (defcustom linum-disable-starred-buffers 't
        "* Disable buffers that have stars in them like *Gnu Emacs*"
        :type 'boolean
        :group 'linum)
      (defun linum-on ()
        "* When linum is running globally, disable line number in modes defined in `linum-disabled-modes-list'. Changed by linum-off. Also turns off numbering in starred modes like *scratch*"
        (unless (or (minibufferp) (member major-mode linum-disabled-modes-list)
                    (and linum-disable-starred-buffers (string-match "*" (buffer-name))))
          (linum-mode 1)))
      (global-set-key (kbd "C-c l") 'linum-mode))
  (progn
    (add-hook 'prog-mode-hook #'display-line-numbers-mode)
    (global-set-key (kbd "C-c l") 'display-line-numbers-mode)))

;;==============================================================================
;; Hide Show
;;
;; https://www.emacswiki.org/emacs/HideShow
;;==============================================================================

(defun my-hs-minor-mode ()
  (hs-minor-mode)
  (local-set-key (kbd "C-c +") 'hs-show-all)
  (local-set-key (kbd "C-c _") 'hs-hide-level)
  (local-set-key (kbd "C-c =") 'hs-show-block)
  (local-set-key (kbd "C-c -") 'hs-hide-block))
(add-hook 'prog-mode-hook 'my-hs-minor-mode)

;;==============================================================================
;; Smooth Scrolling
;;
;; https://www.emacswiki.org/emacs/SmoothScrolling
;;==============================================================================

;; scroll one line at a time (less "jumpy" than defaults)
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1))) ; one line at a time
(setq mouse-wheel-progressive-speed t) ; accelerate scrolling
(setq mouse-wheel-follow-mouse t) ; scroll window under mouse
(setq scroll-step 1) ; keyboard scroll one line at a time
(setq scroll-conservatively 10000)


(provide 'init-base)
