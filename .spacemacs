;; -*- mode: dotspacemacs -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Configuration Layers declaration."
  (setq-default
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (ie. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()
   ;; List of configuration layers to load. If it is the symbol `all' instead
   ;; of a list then all discovered layers will be installed.
   dotspacemacs-configuration-layers
   '(
     ;; editor
     auto-completion
     ;; better-defaults
     ;;(colors :variables
     ;;        colors-enable-rainbow-identifiers t)
     ;;         colors-enable-nyan-cat-progress-bar t)
     colors
     emoji
     ibuffer
     ivy
     osx
     (shell :variables
            shell-default-shell 'ansi-term
            shell-default-term-shell "/usr/local/bin/fish")
     spell-checking
     syntax-checking
     themes-megapack

     ;; notes
     org

     ;; markup
     html
     markdown
     yaml

     ;; mgmt tools
     git
     github

     ;; config files
     ansible
     terraform

     ;; languages
     csharp
     elm
     emacs-lisp
     extra-langs
     haskell
     rust
     shell-scripts

     ;; chat
     (rcirc :variables rcirc-enable-authinfo-support t)

     ;; mail
     ;;mu4e
     )
   dotspacemacs-additional-packages '(wttrin)
   ;; A list of packages and/or extensions that will not be install and loaded.
   dotspacemacs-excluded-packages '(smartparens)
   ;; If non-nil spacemacs will delete any orphan packages, i.e. packages that
   ;; are declared in a layer which is not a member of
   ;; the list `dotspacemacs-configuration-layers'
   dotspacemacs-delete-orphan-packages t))

(defun dotspacemacs/init ()
  "Initialization function.
This function is called at the very startup of Spacemacs initialization
before layers configuration."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; Either `vim' or `emacs'. Evil is always enabled but if the variable
   ;; is `emacs' then the `holy-mode' is enabled at startup.
   dotspacemacs-editing-style 'vim
   ;; If non nil output loading progess in `*Messages*' buffer.
   dotspacemacs-verbose-loading nil
   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to a .PNG file.
   ;; If the value is nil then no banner is displayed.
   ;; dotspacemacs-startup-banner 'official
   dotspacemacs-startup-banner 'official
   ;; t if you always want to see the changelog at startup
   dotspacemacs-always-show-changelog nil
   ;; List of items to show in the startup buffer. If nil it is disabled.
   ;; Possible values are: `recents' `bookmarks' `projects'."
   dotspacemacs-startup-lists nil
   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press <SPC> T n to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(material spacemacs-dark clues)
   ;; If non nil the cursor color matches the state color.
   dotspacemacs-colorize-cursor-according-to-state t
   ;; Default font. `powerline-scale' allows to quickly tweak the mode-line
   ;; size to make separators look not too crappy.
   dotspacemacs-default-font '("Fira Code Medium"
                               :size 12
                               :weight normal
                               :width normal
                               :powerline-scale 1.1)
   ;; The leader key
   dotspacemacs-leader-key "SPC"
   ;; The leader key accessible in `emacs state' and `insert state'
   dotspacemacs-emacs-leader-key "M-m"
   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it.
   dotspacemacs-major-mode-leader-key ","
   ;; Major mode leader key accessible in `emacs state' and `insert state'
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   ;; The command key used for Evil commands (ex-commands) and
   ;; Emacs commands (M-x).
   ;; By default the command key is `:' so ex-commands are executed like in Vim
   ;; with `:' and Emacs commands are executed with `<leader> :'.
   dotspacemacs-command-key ":"
   ;; If non nil the paste micro-state is enabled. While enabled pressing `p`
   ;; several times cycle between the kill ring content.
   dotspacemacs-enable-paste-micro-state nil
   ;; Guide-key delay in seconds. The Guide-key is the popup buffer listing
   ;; the commands bound to the current keystrokes.
   dotspacemacs-guide-key-delay 0.4
   ;; If non nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil ;; to boost the loading time.
   dotspacemacs-loading-progress-bar t
   ;; If non nil the frame is fullscreen when Emacs starts up.
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil
   ;; If non nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX."
   dotspacemacs-fullscreen-use-non-native nil
   ;; If non nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup nil
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'.
   dotspacemacs-active-transparency 90
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'.
   dotspacemacs-inactive-transparency 90
   ;; If non nil unicode symbols are displayed in the mode line.
   dotspacemacs-mode-line-unicode-symbols t
   ;; If non nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters the
   ;; point when it reaches the top or bottom of the screen.
   dotspacemacs-smooth-scrolling t
   ;; If non-nil smartparens-strict-mode will be enabled in programming modes.
   dotspacemacs-smartparens-strict-mode nil
   ;; If non nil advises quit functions to keep server open when quitting.
   dotspacemacs-persistent-server nil
   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `ag', `pt', `ack' and `grep'.
   dotspacemacs-search-tools '("ag" "pt" "ack" "grep")
   ;; The default package repository used if no explicit repository has been
   ;; specified with an installed package.
   ;; Not used for now.
   dotspacemacs-default-package-repository nil
   dotspacemacs-scratch-mode 'haskell-mode
   )
  )

(defun dotspacemacs/user-config ()
  ;; system
  (add-to-list 'exec-path "~/.local/bin")
  (remove-hook 'haskell-mode-hook 'flyspell-mode)

  ;; full screen offset hack for native OSX
  (setq ns-auto-hide-menu-bar t)
  (set-frame-position nil 0 -24)
  (tool-bar-mode 0)
  (set-frame-size nil 271 85)

  ;; clock
  (setq display-time-day-and-date t)
  (display-time)

  ;; japanese keyboard
  (global-set-key (quote [134217893]) "\\")

  ;; weather
  (setq wttrin-default-cities '("Osaka"))

  ;; haskell
  (add-hook 'haskell-mode-hook 'turn-on-haskell-indent)
  (setq haskell-indent 2)

  ;; org-mode
  (setq org-startup-truncated nil)
  ;;(setq org-bullets-bullet-list '("■" "◆" "▲" "▶"))
  (setq org-agenda-window-setup 'current-window)
  (setq org-todo-keywords
        '((sequence "TODO(t)" "ACTIVE(a)" "ONHOLD(h@/!)" "|" "DONE(d!)" "CANCELED(c@)")))
  (setq org-fontify-done-headline t)
  (setq spaceline-org-clock-p t)

  ;; irc
  ;;(setq rcirc-server-alist
  ;;      '(("irc.freenode.net"
  ;;         :port "6667"
  ;;         :user "boj"
  ;;         :nick "boj"
  ;;         :channels ("#haskell"
  ;;                    "#haskell-beginners"
  ;;                    "#haskell-infrastructure"))))
  ;;(setq rcirc-omit-responses '("JOIN" "PART" "QUIT" "NICK" "AWAY"))
  ;;(defun bojo/rcirc-setup ()
  ;;  (set (make-local-variable 'scroll-conservatively) 8192))
  ;;(add-hook 'rcirc-mode-hook 'bojo/rcirc-setup)

  ;; mu4e
  ;;(setq mu4e-mu-binary "/usr/local/bin/mu"
  ;;      mu4e-attachment-dir  "~/Downloads"
  ;;      mu4e-maildir "~/.mail"
  ;;      mu4e-get-mail-command "mbsync -a"
  ;;      mu4e-update-interval 60
  ;;      mu4e-compose-signature-auto-include nil
  ;;      mu4e-html2text-command "w3m -dump -T text/html"
  ;;      mu4e-view-prefer-html t
  ;;      mu4e-view-show-images t
  ;;      mu4e-view-show-addresses t
  ;;      mu4e-hide-index-messages t
  ;;      mu4e-headers-auto-update t
  ;;      mu4e-headers-include-related nil
  ;;      mu4e-headers-skip-duplicates t
  ;;      mu4e-compose-dont-reply-to-self t
  ;;      mu4e-sent-messages-behavior 'delete
  ;;      mu4e-split-view 'horizontal
  ;;      mu4e-show-images t
  ;;      message-cite-reply-position 'above
  ;;      message-kill-buffer-on-exit t
  ;;      mu4e-index-update-error-warning nil)
  ;;(setq mu4e-contexts
  ;;      `(,(make-mu4e-context
  ;;          :name "gmail"
  ;;          :enter-func (lambda () (mu4e-message "Switch to the gmail context"
  ;;                                  mu4e-refile-folder "/gmail/.all"
  ;;                                  mu4e-drafts-folder "/gmail/.drafts"
  ;;                                  mu4e-sent-folder   "/gmail/.sent"))
  ;;          ;; leave-func not defined
  ;;          :match-func (lambda (msg)
  ;;                        (when msg
  ;;                          (or
  ;;                           (mu4e-message-contact-field-matches
  ;;                            msg '(:to :cc :bcc)
  ;;                            "mojobojo@gmail.com"))))
  ;;          :vars '((user-mail-address . "mojobojo@gmail.com")
  ;;                  (user-full-name	   . "Brian Jones")))
  ;;        ,(make-mu4e-context
  ;;          :name "uncannyworks"
  ;;          :enter-func (lambda () (mu4e-message "Switch to the uncannyworks context"
  ;;                                  mu4e-refile-folder "/uncannyworks/.all"
  ;;                                  mu4e-drafts-folder "/uncannyworks/.drafts"
  ;;                                  mu4e-sent-folder   "/uncannyworks/.sent"))
  ;;          ;; leave-func not defined
  ;;          :match-func (lambda (msg)
  ;;                        (when msg
  ;;                          (or
  ;;                           (mu4e-message-contact-field-matches
  ;;                            msg '(:to :cc :bcc)
  ;;                            "brian.jones@uncannyworks.com"))))
  ;;        :vars '((user-mail-address . "brian.jones@uncannyworks.com")
  ;;                (user-full-name	  . "Brian Jones")))))
  ;;(setq mu4e-maildir-shortcuts
  ;;      '(("/INBOX"  . ?i)
  ;;        ("/all"    . ?a)
  ;;        ("/sent"   . ?s)
  ;;        ("/drafts" . ?d)))
  ;;(setq mu4e-account-alist
  ;;      '(("gmail"
  ;;         (mu4e-refile-folder "/gmail/.all")
  ;;         (mu4e-sent-folder "/gmail/.sent")
  ;;         (mu4e-drafts-folder "/gmail/.drafts")
  ;;         (mu4e-trash-folder "/gmail/.all")
  ;;         (mu4e-reply-to-address "mojobojo@gmail.com")
  ;;         (user-mail-address "mojobojo@gmail.com")
  ;;         (user-full-name "Brian Jones"))
  ;;        ("uncannyworks"
  ;;         (mu4e-refile-folder "/uncannyworks/.all")
  ;;         (mu4e-sent-folder "/uncannyworks/.sent")
  ;;         (mu4e-drafts-folder "/uncannyworks/.drafts")
  ;;         (mu4e-trash-folder "/uncannyworks/.all")
  ;;         (mu4e-reply-to-address "brian.jones@uncannyworks.com")
  ;;         (user-mail-address "brian.jones@uncannyworks.com")
  ;;         (user-full-name "Brian Jones"))))
  ;;(setq mu4e-maildir-shortcuts
  ;;      '(("/gmail/INBOX"   . ?i)
  ;;        ("/gmail/.all"    . ?a)
  ;;        ("/gmail/.sent"   . ?s)
  ;;        ("/gmail/.drafts" . ?d)
  ;;        ("/uncannyworks/INBOX"   . ?1)
  ;;        ("/uncannyworks/.all"    . ?2)
  ;;        ("/uncannyworks/.sent"   . ?3)
  ;;        ("/uncannyworks/.drafts" . ?4)))
  ;;(mu4e/mail-account-reset)
  ;;(setq message-send-mail-function 'message-send-mail-with-sendmail
  ;;      sendmail-program "msmtp")
  ;;(add-hook 'mu4e-compose-mode-hook 'flyspell-mode)
  ;;(require 'gnus-dired)
  ;;(defun gnus-dired-mail-buffers ()
  ;;  "Return a list of active message buffers."
  ;;  (let (buffers)
  ;;    (save-current-buffer
  ;;      (dolist (buffer (buffer-list t))
  ;;        (set-buffer buffer)
  ;;        (when (and (derived-mode-p 'message-mode)
  ;;                   (null message-sent-message-via))
  ;;          (push (buffer-name buffer) buffers))))
  ;;    (nreverse buffers)))
  ;;(setq gnus-dired-mail-mode 'mu4e-user-agent)
  ;;(add-hook 'dired-mode-hook 'turn-on-gnus-dired-mode)

  ;; gpg
  ;;(setq epg-gpg-program "gpg2")
  ;;(add-hook 'mu4e-compose-mode-hook 'epa-mail-mode)
  ;;(add-hook 'mu4e-view-mode-hook 'epa-mail-mode)
)

;; Custom variables
;; ----------------

;; Do not write anything in this section. This is where Emacs will
;; auto-generate custom variable definitions.


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ahs-case-fold-search nil)
 '(ahs-default-range (quote ahs-range-whole-buffer))
 '(ahs-idle-interval 0.25)
 '(ahs-idle-timer 0 t)
 '(ahs-inhibit-face-list nil)
 '(ring-bell-function (quote ignore) t)
 '(send-mail-function (quote smtpmail-send-it)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 ;;'(default ((t (:background nil))))
 '(company-tooltip-common ((t (:inherit company-tooltip :weight bold :underline nil))))
 '(company-tooltip-common-selection ((t (:inherit company-tooltip-selection :weight bold :underline nil)))))
