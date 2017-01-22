;; Required packages
(require 'helm)
(require 'helm-ls-git)
(require 'multiple-cursors)
(require 'powerline)
(powerline-default-theme)

;; EVIL mode
(require 'evil)
(require 'evil-surround)
(evil-mode 1)
(global-evil-surround-mode 1)
(setq evil-default-cursor (quote (t "#750000"))
    evil-visual-state-cursor '("#880000" box)
    evil-normal-state-cursor '("#750000" box)
    evil-insert-state-cursor '("#e2e222" bar)
    )

(require 'evil-matchit)
(global-evil-matchit-mode 1)

(setq helm-ff-transformer-show-only-basename nil
      helm-ls-git-show-abs-or-relative 'relative)
; Add cmake listfile names to the mode list.
(setq auto-mode-alist
	  (append
	   '(("CMakeLists\\.txt\\'" . cmake-mode))
	   '(("\\.cmake\\'" . cmake-mode))
	   auto-mode-alist))

(autoload 'cmake-mode "~/.emacs.d/cmake/cmake-mode.el" t)
