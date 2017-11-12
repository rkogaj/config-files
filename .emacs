;;settings
(package-initialize)

;;font
(set-frame-font "Inconsolata-11" nil t)

;;disable graphical scroll and toolbars
(toggle-scroll-bar -1)
(tool-bar-mode -1)

;;melpa
(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))

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
;;(setq-default fill-column 80)

;;electric brackets
(electric-pair-mode)

;;dead tildes
(require 'iso-transl)

;;truncate long lines

;; Backup files directory
(setq backup-directory-alist
      '((".*" . "~/Documents/.emacsBackups/backup")))
;; autosave files directory
(setq tramp-auto-save-directory
      '((".*" . "~/Documents/.emacsBackups/autosave")))

;;themes
;;(load-theme 'gruvbox-dark-hard t)
;;(load-theme 'afternoon t)
;;(load-theme 'cyberpunk t)
;;(load-theme 'darkokai t)
;;(load-theme 'flatland-black t)
;;(load-theme 'flatui-dark t)
;;(load-theme 'molokai t)
;;(load-theme 'monochrome t)
;;(load-theme 'monokai t)
;;(load-theme 'nord t)
;;(load-theme 'obsidian t)
(load-theme 'paper t)
;;(load-theme 'spacegray t)

;;aditional packages
;;company
;;web mode
;;yasnippet
;;helm
;;magit
;;projectile
;;dired
