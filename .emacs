(require 'package)

(add-to-list 'package-archives
	     '("melpa-stable" . "https://stable.melpa.org/packages/"))

(package-initialize)

(let ((package-list
       '(elpy
	 web-mode
	 cyberpunk-theme))
      (refreshed? nil))
  (dolist (package package-list)
    (unless (package-installed-p package)
      (when (null refreshed?)
	(package-refresh-contents)
	(setq refreshed? t))
      (package-install package))))

(load-theme 'cyberpunk t)

(elpy-enable)
(setq elpy-rpc-python-command "python3")
(global-set-key (kbd "C-c <left>")  'windmove-left)
(global-set-key (kbd "C-c <down>")  'windmove-down)
(global-set-key (kbd "C-c <up>")    'windmove-up)
(global-set-key (kbd "C-c <right>") 'windmove-right)

(add-to-list 'auto-mode-alist '("\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\'" . web-mode))

