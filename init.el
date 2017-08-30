(package-initialize)

;;; Set up package archives
(add-to-list 'package-archives
             '("melpa-stable" . "http://stable.melpa.org/packages/"))
(add-to-list 'package-archives
             '("org" . "http://orgmode.org/elpa/"))
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)
(setq package-archive-priorities '(("org" . 4)
                                   ("melpa-stable" . 3)
                                   ("melpa" . 2)
                                   ("gnu" . 1)))
(add-to-list 'package-pinned-packages '(alert . "melpa"))
(add-to-list 'package-pinned-packages '(ghub . "melpa"))

;;; Bootstrap use-package
;; Install use-package if it's not already installed.
;; use-package is used to configure the rest of the packages.
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; From use-package README https://github.com/jwiegley/use-package
(eval-when-compile
  (require 'use-package))

(require 'diminish)                ;; if you use :diminish
(require 'bind-key)

(org-babel-load-file (concat user-emacs-directory "config.org"))
