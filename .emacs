;;settings
(package-initialize)

;;disable graphical scroll and toolbars
(toggle-scroll-bar -1)
(tool-bar-mode -1)

;;define transparency
(set-frame-parameter (selected-frame) 'alpha '(90 . 80))
;;transparency function M-x transparency
(defun transparency (value)
  "Sets the transparency of the frame window. 0=transparent/100=opaque"
  (interactive "nTransparency Value 0 - 100 opaque:")
  (set-frame-parameter (selected-frame) 'alpha value))

;;melpa
(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))

;;font
(set-frame-font "Inconsolata-10" nil t)

;;powerline
(powerline-default-theme)

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
	("STARTED" . "turquoise")
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

;;dead tildes
(require 'iso-transl)

;; Backup files directory
(setq backup-directory-alist
      '((".*" . "~/Documents/.emacsBackups/backup")))
;; autosave files directory
(setq tramp-auto-save-directory
      '((".*" . "~/Documents/.emacsBackups/autosave")))
;;auto save settings
;;(auto-save-interval 0)
;;(auto-save-timeout 300)

;;company mode
(add-hook 'after-init-hook 'global-company-mode)
;;autocomplete reducing delay
(setq company-dabbrev-downcase 0)
(setq company-idle-delay 0)

;;projectile mode
(projectile-global-mode)

;;themes
(load-theme 'sanityinc-tomorrow-night t)

;;yasnippet
(require 'yasnippet)
(add-hook 'prog-mode-hook #'yas-minor-mode)

;;aditional packages
;;company - autocomplete
;;web mode
;;yasnippet
;;helm
;;magit
;;projectile
;;dired
;;go-mode
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (projectile magit darktooth-theme company base16-theme powerline))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
