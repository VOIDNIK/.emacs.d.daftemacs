;;==============================================================================
;; magit
;;==============================================================================

(add-hook 'magit-mode-hook 'turn-on-magit-gitflow)
(setq magit-gitflow-popup-key "~")

;;==============================================================================
;; pdf-tools
;;==============================================================================

(use-package pdf-tools
    :ensure t
    :config
    (pdf-tools-install))

;;==============================================================================
;; ediff
;;
;; https://oremacs.com/2015/01/17/setting-up-ediff/
;;==============================================================================

(defmacro csetq (variable value)
  `(funcall (or (get ',variable 'custom-set)
                'set-default)
            ',variable ,value))
(csetq ediff-window-setup-function 'ediff-setup-windows-plain)
(csetq ediff-split-window-function 'split-window-horizontally)
(csetq ediff-diff-options "-w")
(winner-mode)
(add-hook 'ediff-after-quit-hook-internal 'winner-undo)

;;==============================================================================
;; diff-hl
;;==============================================================================

(use-package diff-hl
  :ensure t
  :custom-face
  (diff-hl-insert ((t (:foreground "#50fa7b" :background "#50fa7b"))))
  (diff-hl-delete ((t (:foreground "#ff5555" :background "#ff5555"))))
  (diff-hl-change ((t (:foreground "#8be9fd" :background "#8be9fd"))))
  :config
  (global-diff-hl-mode +1)
  (diff-hl-flydiff-mode +1)
  (add-hook 'magit-post-refresh-hook #'diff-hl-magit-post-refresh t))


(provide 'init-tools)
