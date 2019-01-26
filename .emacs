(require 'package)
(add-to-list 'package-archives
	     '("melpa-stable" . "https://stable.melpa.org/packages/"))

(package-initialize)
(elpy-enable)
(setq elpy-rpc-python-command "python3")

(add-to-list 'custom-theme-load-path "~/.emacs.d/elpa/ahungry-theme-1.10.0/")

(setq ahungry-theme-font-settings nil)
(load-theme 'ahungry t)

(global-set-key (kbd "C-c <left>")  'windmove-left)
(global-set-key (kbd "C-c <down>")  'windmove-down)
(global-set-key (kbd "C-c <up>")    'windmove-up)
(global-set-key (kbd "C-c <right>") 'windmove-right)
