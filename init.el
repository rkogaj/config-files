;;settings
(package-initialize)

;;disable graphical scroll and toolbars
(toggle-scroll-bar -1)
(tool-bar-mode -1)

;;define transparency
;;(set-frame-parameter (selected-frame) 'alpha '(90 . 80))
;;transparency function M-x transparency
;;(defun transparency (value)
  ;;"Sets the transparency of the frame window. 0=transparent/100=opaque"
  ;;(interactive "nTransparency Value 0 - 100 opaque:")
  ;;(set-frame-parameter (selected-frame) 'alpha value))

;;melpa
(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))

;;font
(set-frame-font "Hack 10" nil t)

;; dead acute
(require 'iso-transl)


;;prog-mode hook linum-mode
(add-hook 'prog-mode-hook 'linum-mode)
;;linum-mode format for CLI
(setq linum-format 'dynamic)

;;linum mode dynamic mod
(defadvice linum-update-window (around linum-dynamic activate)
  (let* ((w (length (number-to-string
                     (count-lines (point-min) (point-max)))))
         (linum-format (concat " %" (number-to-string w) "d ")))
    ad-do-it))


;;auto-fill-mode hook emacs25
(add-hook 'org-mode-hook 'auto-fill-mode)
;;orgmode indent mode hook
(add-hook 'org-mode-hook 'org-indent-mode)
;;orgmode todo keywords
(setq org-todo-keywords
      '((sequence "TODO" "STARTED" "|" "DONE" "HOLD" 
		  "CANCELED")))
;;orgmode todo FACES
(setq org-todo-keyword-faces
      '(("TODO" . org-warning)
	("STARTED" . (:foreground "turquoise"
		      :weight bold))
	("DONE" . (:foreground "PaleGreen"
		   :weight bold))
	("HOLD" . (:foreground "dim gray"
		   :weight bold))
	("CANCELED" . (:foreground "white"
		       :background "dark red"
		       :weight bold))
	))

;;electric brackets
(electric-pair-mode)

;; Backup files directory
(setq backup-directory-alist
      '((".*" . "~/Documents/.emacsBackups/backup")))
;; autosave files directory
(setq tramp-auto-save-directory
      '((".*" . "~/Documents/.emacsBackups/autosave")))

;;auto save settings
;; auto-save-interval is amount of characters before saving
(setq auto-save-interval 200)
;; auto-save-timeout is amount of time before saving in seconds
(setq auto-save-timeout 300)

;;company mode
(add-hook 'after-init-hook 'global-company-mode)
;; autocomplete reducing delay
;; (setq company-dabbrev-downcase 0)
;; (setq company-idle-delay 0)

;;projectile mode
(projectile-global-mode)

;;themes
;; (load-theme 'sanityinc-tomorrow-bright t)

;;yasnippet
(require 'yasnippet)
(add-hook 'prog-mode-hook #'yas-minor-mode)

;;telephone line
;;(telephone-line-mode 1)

;;smart mode line
(sml/setup)
(setq sml/theme 'respectful)

;; other line modes
;;; power line
;;; (powerline-default-theme)

;; emacs server
(require 'server)
(unless (server-running-p)
  (server-start))


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" default)))
 '(package-selected-packages
   (quote
    (smart-mode-line color-theme-sanityinc-tomorrow haskell-mode haskell-snippets projectile telephone-line yasnippet-snippets company yasnippet))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
