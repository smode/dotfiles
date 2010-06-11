(setq load-path (cons "~/.emacs.d/elisp/" load-path))


(load-file "~/.emacs.d/conf/.color.el")
(load-file "~/.emacs.d/conf/.common.el")
(load-file "~/.emacs.d/conf/.mew.el")
(load-file "~/.emacs.d/conf/.modes.el")
(load-file "~/.emacs.d/conf/.myel.el")
;(load-file "~/.emacs.d/conf/.secret.el")

(put 'upcase-region 'disabled nil)
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(indicate-buffer-boundaries (quote left))
 '(menu-bar-mode nil)
 '(tool-bar-mode nil))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(font-lock-builtin-face ((((class color) (min-colors 8)) (:foreground "brightblue"))))
 '(font-lock-comment-delimiter-face ((t (:inherit nil :foreground "MediumSeagreen"))))
 '(font-lock-comment-face ((t (:foreground "MediumSeagreen"))))
 '(font-lock-function-name-face ((t (:foreground "Blue"))))
 '(font-lock-keyword-face ((t (:foreground "Royalblue" :weight bold))))
 '(font-lock-preprocessor-face ((t (:foreground "brightblue"))))
 '(font-lock-string-face ((t (:foreground "firebrick"))))
 '(font-lock-type-face ((t (:foreground "blue"))))
 '(font-lock-variable-name-face ((t (:foreground "Blue"))))
 '(font-lock-warning-face ((t (:foreground "red"))))
 '(highlight ((t (:background "darkolivegreen" :foreground "red"))))
 '(minibuffer-prompt ((t (:foreground "blue"))))
 '(nxml-comment-content-face ((t (:foreground "DarkGreen"))))
 '(nxml-comment-delimiter-face ((t (:foreground "DarkGreen"))))
 '(nxml-delimited-data-face ((t (:foreground "firebrick"))))
 '(nxml-delimiter-face ((t (:foreground "medium blue"))))
 '(nxml-element-local-name-face ((t (:inherit nxml-name-face :foreground "dark blue"))))
 '(nxml-name-face ((t (:foreground "BlueViolet"))))
 '(nxml-tag-slash-face ((t (:inherit nxml-name-face :foreground "medium blue"))))
 '(trailing-whitespace ((t (:background "peach puff")))))
