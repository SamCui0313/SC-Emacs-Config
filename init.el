(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(set-frame-font "Hack Bold Italic 14" nil t)
(setq inhibit-startup-screen t)
(setq display-line-numbers-type 'relative)
(global-display-line-numbers-mode 1)
(tool-bar-mode -1)
(setq make-backup-files nil)
(setq-default tab-width 4)
;; Theme
(use-package gruvbox-theme
  :ensure t
  :init
  (load-theme 'gruvbox t)
)
;; vim key
;;(use-package evil
;;  :ensure t
;;  :init
;;  (evil-mode 1)
;;)
;; start page
(use-package dashboard
  :ensure t
  :config
  (dashboard-setup-startup-hook))

(use-package company-box
  :ensure t
  :if window-system
  :hook (company-mode . company-box-mode))

(use-package company
  :ensure t
  :init
  (global-company-mode)
  :config
  (setq company-minimum-prefix-length 1)
  (setq company-tooltip-align-annotations t)
  (setq company-idle-delay 0.0)
  (setq company-show-numbers t)
  (setq company-selection-wrap-around t)
  (setq company-transformers '(company-sort-by-occurrence)))

(use-package undo-tree
  :ensure t
  :init
  (global-undo-tree-mode)
  )

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
