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
(load-theme 'gruvbox-dark-hard t)
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
;;(load-theme 'paper t)
;;(load-theme 'spacegray t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (base16-theme cyberpunk-theme darkokai-theme flatland-black-theme
		  flatui-dark-theme molokai-theme monochrome-theme monokai-theme
		  nord-theme obsidian-theme paper-theme spacegray-theme
		  markdown-mode ztree powerline neotree gruvbox-theme
		  afternoon-theme))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
