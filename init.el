(defconst galen-const/emacs-path     "~/.emacs.d/" "我的emacs相关配置文件的路径")
(defconst galen-const/plugins-path   (concat galen-const/emacs-path "plugins/") "我下载的emacs lisp包的路径")
(defconst galen-const/my-lisps-path  (concat galen-const/emacs-path "my-lisps/") "我自己写的emacs lisp包的路径")
(defconst galen-const/templates-path (concat galen-const/emacs-path "templates/") "Path for templates")

;; 把`galen-const/plugins-path'的所有子目录都加到`load-path'里面
(load (concat galen-const/my-lisps-path "galen-add-subdirs"))
(galen-func/add-subdirs-to-load-path galen-const/plugins-path)
(galen-func/add-subdirs-to-load-path galen-const/my-lisps-path)

(require 'auto-show-doc)

;; ;; 一个Emacs的16进制文件查看器，可以瞬间打开巨大的文件，比官方的hexl-mode好用
(require 'hexview-mode)

;; ;; 用eval-after-load避免不必要的elisp包的加载
(require 'galen-eval-after-load)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;   对通用变量、函数进行定义
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; 自定义常量，变量
(require 'galen-variables)

;; 自定义函数
(require 'galen-functions)

;; 自定义宏定义
(require 'galen-macros)

;; 自定义一些别名
(require 'galen-alias)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;   对工具，插件进行配置
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(require 'galen-gtags-settings)

;(semantic-mode 1) ;使用eassist之前，必须打开semantic-mode
;; 自带的不能产生elisp函数列表
(require 'galen-cedet-settings)
(require 'galen-eassist-settings)

;; `mode-line'显示格式
(require 'galen-mode-line-settings)

;; ffap,打开当前point的文件; 直接用ctrl + x, ctl + f
(require 'galen-ffap-settings)

(require 'galen-company-settings)

;; ;; 超强的snippet
(require 'galen-yasnippet-settings)

;; 自动插入一些文件模板,用template
(require 'galen-template-settings)

;; ;; 自动插入一些文件模板; 需要yasnippet
(require 'galen-auto-insert-settings)

;; hs-minor-mode,折叠代码
(require 'galen-hs-minor-mode-settings)

;; 高亮匹配的括号, 很实用
(require 'galen-highlight-parentheses-settings)


;; 用来显示当前光标在哪个函数
(require 'galen-which-func-settings)


;; ;; ecb 代码浏览器
;; ;(require 'ecb-settings)

;; ;; doxygen
;; ;(require 'doxymacs-settings)

;; ;(require 'autoconf-mode-settings)

;; 像Eclipse那样高亮光标处单词
(require 'galen-highlight-symbol-settings)

;; 以后再配置
;; ;; `gdb'
;; (require 'gud-settings)

;; 以后再配置
;; ;; subversion
;; (require 'svn-settings)

;; ;; 版本控制
;; (require 'vc-settings)


;; ;; 所有关于lisp方面的配置
;; (require 'all-lisp-settings)

;; ;; 开发shell程序的mode配置
;; (require 'sh-mode-settings)

;; ;; xml mode配置
;; ;(require 'sgml-mode-settings)

;; ;(require 'html-mode-settings)

;; ;; ruby
;; (require 'ruby-settings)

;; ;; rails
;; ;(require 'rails-settings)

;; ;(require 'php-mode)

;; ;(require 'sql-settings)

;; ;; 显示变量, 函数的声明
(require 'galen-eldoc-settings)

;; ;; 自动给你加上括号
(require 'galen-autopair-settings)

;; ;; 把Eclipse的功能带给Emacs
;; (require 'eclim-settings)

;; ;; 方便开发c/c++的配置
(require 'galen-c-settings)

(require 'kde-emacs-settings)

;; ;; 放在kde-emacs后面
;; (require 'compile-settings)


;; (defun copy-current-fun-name ()
;;   "Copy current function name."
;;   (interactive)
;;   (kill-new (which-function)))

;; (mapc 'require '(;; hide region
;;                  ;; hide-region-settings
;;                  ;; hide lines
;;                  ;; hide-lines
;;                  ;; 把imenu以tree的形式显示出来
;;                  ;;imenu-tree-settings
;;                  ;; 高亮引用的函数和变量
;;                  ;;zjl-hl-settings
;;                  ;; 把speedbar放到当前frame里面
;;                  ;;sr-speedbar-settings
;;                  ;;codepilot-settings  ;; this will make gdb-many-window bad
;;                  ;;perl-settings
;;                  ;; 实现程序变量的自动对齐
;;                  ;;align-settings
;;                  ;; 生成c程序调用图
;;                  ;; http://emacser.com/emacs-cflow.htm
;;                  cflow-mode-settings))

;; ;; 各种语言开发方面的设置
;; (require 'dev-settings)



;; ;; 不要menu-bar和tool-bar
;; ;; (unless window-system
;; ;;   (menu-bar-mode -1))
;; ;(menu-bar-mode -1)
;; ;; GUI下显示toolbar的话select-buffer会出问题
;; ;;(if (fboundp 'tool-bar-mode)
;; ;;    (tool-bar-mode -1))

;; ;; 打开压缩文件时自动解压缩
;; ;; 必须放在session前面
;; (auto-compression-mode 1)

;; ;; 所有关于buffer方面的配置
;; (require 'all-buffer-settings)

;; ;; frame-cmds.el必须放在multi-term前面,否则ediff退出时会出现错误
;; ;; 而icicles soft-requires frame-cmds.el, 所以icicles也必须放在multi-term前面
;; ;; emacs22下也必须放在kde-emacs前面, 否则会说shell-command是void-function
;; ;; http://emacser.com/icicles-doremi-palette.htm
;; (require 'icicles-settings)
;; (require 'doremi-settings)
;; (require 'palette-settings)

;; ;; edit-settings中对M-w重新定义,但是kde-emacs中也对其定义了
;; ;; 所以必须要放在kde-emacs后面

(require 'galen-compile-settings)

(require 'galen-edit-settings)

;; 用M-x执行某个命令的时候，在输入的同时给出可选的命令名提示
(require 'galen-icomplete-settings)

;; 图片mode
(require 'galen-image-mode-settings)



;; ;; 方便的在kill-ring里寻找需要的东西
;; (require 'browse-kill-ring-settings)

;; 显示行号
(require 'galen-linum-settings)

;; ;; color theme Emacs主题
;; (require 'color-theme-settings)

;; (require 'ahei-face)
;; (require 'color-theme-ahei)
;; (require 'face-settings)

(require 'galen-face-settings)

;; 高亮当前行 ； highlight看不见当前行的颜色
(require 'galen-hl-line-settings)

;; ;; diff
;; (require 'diff-settings)

;; ;; Emacs的diff: ediff
;; (require 'ediff-settings)

;; ;; 最近打开的文件
;; (require 'recentf-settings)

;; ;; 在buffer中方便的查找字符串: color-moccur
;; (require 'moccur-settings)

;; ;; Emacs超强的增量搜索Isearch配置
;; (require 'isearch-settings)

;; ;; 非常酷的一个扩展。可以“所见即所得”的编辑一个文本模式的表格
;; (if is-before-emacs-21 (require 'table "table-for-21"))

;; ;; 把文件或buffer彩色输出成html
;; (require 'htmlize)

;; ;; time-stamp, 在文件头记录修改时间, 并动态更新
;; (require 'time-stamp-settings)

;; ;; Emacs可以做为一个server, 然后用emacsclient连接这个server,
;; ;; 无需再打开两个Emacs
;; (require 'emacs-server-settings)

;; (require 'apropos-settings)
;; (require 'completion-list-mode-settings)

;; ;; 显示ascii表
;; ;;(require 'ascii)

;; ;; 所有关于查看帮助方面的配置
(require 'galen-help-mode-settings)
;; Emacs中的info
(require 'galen-info-settings)
;; Emacs中的man配置
(require 'galen-man-settings)
;; 非常方便的查看emacs帮助的插件
;(require 'describe-symbol)
;(require 'find-symbol)
;(require 'describe-find-symbol-settings)

;; ;; 简写模式
;; (setq-default abbrev-mode t)
;; (setq save-abbrevs nil)

;; 可以为重名的buffer在前面加上其父目录的名字来让buffer的名字区分开来，而不是单纯的加一个没有太多意义的序号
(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)

;; ;; 以目录形式显示linkd文档
;; ;; (require 'linkd-settings)

;; Emacs的超强文件管理器
(require 'galen-dired-settings)

;; ;; 方便的切换major mode
;; (defvar switch-major-mode-last-mode nil)

;; (defun major-mode-heuristic (symbol)
;;   (and (fboundp symbol)
;;        (string-match ".*-mode$" (symbol-name symbol))))

;; (defun switch-major-mode (mode)
;;   "切换major mode"
;;   (interactive
;;    (let ((fn switch-major-mode-last-mode) val)
;;      (setq val
;;            (completing-read
;;             (if fn (format "切换major-mode为(缺省为%s): " fn) "切换major mode为: ")
;;             obarray 'major-mode-heuristic t nil nil (symbol-name fn)))
;;      (list (intern val))))
;;   (let ((last-mode major-mode))
;;     (funcall mode)
;;     (setq switch-major-mode-last-mode last-mode)))
;; (global-set-key (kbd "C-x q") 'switch-major-mode)

;; (defun get-mode-name ()
;;   "显示`major-mode'及`mode-name'"
;;   (interactive)
;;   (message "major-mode为%s, mode-name为%s" major-mode mode-name))
;; (global-set-key (kbd "C-x m") 'get-mode-name)

;; ;; 查看Emacs内进程
;; (require 'list-processes+-settings)

;; (require 'view-mode-settings)

;; (defun revert-buffer-no-confirm ()
;;   "执行`revert-buffer'时不需要确认"
;;   (interactive)
;;   (when (buffer-file-name)
;;     (let ((emaci emaci-mode))
;;       (revert-buffer buffer-file-name t)
;;       (emaci-mode (if emaci 1 -1)))))
;; (eal-define-keys-commonly
;;  global-map
;;  `(("C-x u"   revert-buffer-no-confirm)
;;    ("C-x M-K" revert-buffer-with-gbk)
;;    ("C-x U"   revert-buffer-with-coding-system-no-confirm-sb)))

;; (defun count-brf-lines (&optional is-fun)
;;   "显示当前buffer或region或函数的行数和字符数"
;;   (interactive "P")
;;   (let (min max)
;;     (if is-fun
;;         (save-excursion
;;           (beginning-of-defun) (setq min (point))
;;           (end-of-defun) (setq max (point))
;;           (message "当前函数%s内共有%d行, %d个字符" (which-function) (count-lines min max) (- max min)))
;;       (if mark-active
;;           (progn
;;             (setq min (min (point) (mark)))
;;             (setq max (max (point) (mark))))
;;         (setq min (point-min))
;;         (setq max (point-max)))
;;       (if (or (= 1 (point-min)) mark-active)
;;           (if mark-active
;;               (message "当前region内共有%d行, %d个字符" (count-lines min max) (- max min))
;;             (message "当前buffer内共有%d行, %d个字符" (count-lines min max) (- max min)))
;;         (let ((nmin min) (nmax max))
;;           (save-excursion
;;             (save-restriction
;;               (widen)
;;               (setq min (point-min))
;;               (setq max (point-max))))
;;           (message "narrow下buffer内共有%d行, %d个字符, 非narrow下buffer内共有%d行, %d个字符"
;;                    (count-lines nmin nmax) (- nmax nmin) (count-lines min max) (- max min)))))))
;; (eal-define-keys-commonly
;;  global-map
;;  `(("C-x l" count-brf-lines)
;;    ("C-x L" (lambda () (interactive) (count-brf-lines t)))))

;; ;; 增加更丰富的高亮
(require 'generic-x)

;; (defun switch-to-scratch ()
;;   "切换到*scratch*"
;;   (interactive)
;;   (let ((buffer (get-buffer-create "*scratch*")))
;;     (switch-to-buffer buffer)
;;     (unless (equal major-mode 'lisp-interaction-mode)
;;       (lisp-interaction-mode))))
;; ;(global-set-key (kbd "C-x s") 'switch-to-scratch)

;; (defun visit-.emacs ()
;;   "访问.emacs文件"
;;   (interactive)
;;   (find-file (concat galen-const/emacs-path ".emacs")))
;; (global-set-key (kbd "C-x E") 'visit-.emacs)

;; ;; grep
(require 'galen-grep-settings)


;; ;; ack-grep, grep纯perl的代替品
;; (require 'full-ack-settings)

;; (eal-define-keys-commonly
;;  global-map
;;  `(
;;    ;("M-r"     query-replace-sb)
;;    ("M-%"     query-replace-sb)
;;    ("ESC M-%" query-replace-regexp-sb)
;;    ("ESC M-r" query-replace-regexp-sb)
;;    ("C-x M-r" query-replace-regexp-sb)
;;    ("M-z"     zap-to-char-sb)
;;    ("C-j"     goto-line)
;;    ("C-x C-s" save-buffer-sb)))

;; (am-add-hooks
;;  `(find-file-hook)
;;  (lambda ()
;;    (local-set-key (kbd "C-M-j") 'goto-line)))

;; ;; 返回到最近去过的地方
;; (require 'recent-jump-settings)

;; ;; 统计命令使用频率
;; (require 'command-frequence)

;; ;; Emacs中的文本浏览器w3m
;; ;; http://emacser.com/w3m.htm
;; ;; (require 'w3m-settings)

;; ;; 以另一用户编辑文件, 或者编辑远程主机文件
;; (require 'tramp-settings)

;; ;; erc: Emacs中的IRC
;; ;; ERC使用简介 emacser.com/erc.htm
;; (require 'erc-settings)

;; ;; spell check
;; (setq-default ispell-program-name "aspell")

;; (define-key global-map (kbd "C-q") 'quoted-insert-sb)

;; ;; Emacs中的包管理器
;; (require 'package)
;; (package-initialize)

;; (require 'auto-install)
;; (setq auto-install-directory (concat galen-const/plugins-path "auto-install"))

;; (unless mswin
;;   (defun install-.emacs ()
;;     (interactive)
;;     (shell-command (concat galen-const/emacs-path "install.emacs.sh")))

;;   (add-hook 'kill-emacs-hook 'install-.emacs))

;; ;; 把pdf,ps,dvi文件转换为png格式, 在Emacs里面浏览
;; (if is-after-emacs-23
;;     (require 'doc-view)
;;   (setq doc-view-conversion-refresh-interval 3))

;; ;; 在Emacs里面使用shell
;; (require 'term-settings)
;; (require 'multi-term-settings)

;; ;; (require 'anything-settings)

;; (require 'ioccur)

;; ;; 查询天气预报
;; (require 'weather-settings)

;; ;; 可以把光标由方块变成一个小长条
;; ;;(require 'bar-cursor)

;; (defun goto-my-emacs-lisps-dir ()
;;   "Goto `galen-const/plugins-path'."
;;   (interactive)
;;   (dired galen-const/plugins-path))
;; (defun goto-my-emacs-my-lisps-dir ()
;;   "Goto `galen-const/my-lisps-path'."
;;   (interactive)
;;   (dired galen-const/my-lisps-path))
;; (defun goto-my-emacs-dir ()
;;   "Goto `galen-const/emacs-path'."
;;   (interactive)
;;   (dired galen-const/emacs-path))
;; (defun goto-my-home-dir ()
;;   "Goto my home directory."
;;   (interactive)
;;   (dired "~"))
;; (define-key-list
;;   global-map
;;   `(("C-x G l" goto-my-emacs-lisps-dir)
;;     ("C-x G m" goto-my-emacs-my-lisps-dir)
;;     ("C-x G e" goto-my-emacs-dir)
;;     ("C-x M-H" goto-my-home-dir)))

;; ;(define-key global-map (kbd "C-x M-c") 'describe-char)
;; (eal-define-keys-commonly
;;   global-map
;;   `(("C-x M-c" describe-char)
;;     ("C-x M-C" set-buffer-file-coding-system)))

;; ;; 启动Emacs的时候最大化Emacs
;; (require 'maxframe-settings)

;; (defun dos2unix ()
;;   "dos2unix on current buffer."
;;   (interactive)
;;   (set-buffer-file-coding-system 'unix))

;; (defun unix2dos ()
;;   "unix2dos on current buffer."
;;   (interactive)
;;   (set-buffer-file-coding-system 'dos))

;; (define-key global-map (kbd "C-x M-D") 'dos2unix)

;; (define-key-list
;;   global-map
;;   `(("C-x M-k" Info-goto-emacs-key-command-node)
;;     ("C-x ESC ESC" repeat-complex-command-sb)))

;; ;; Emacs才是世界上最强大的IDE － 智能的改变光标形状
;; ;; http://emacser.com/cursor-change.htm
;; ;;(require 'cursor-change)
;; ;;(cursor-change-mode 1)

;; (defun copy-file-name (&optional full)
;;   "Copy file name of current-buffer.
;; If FULL is t, copy full file name."
;;   (interactive "P")
;;   (let ((file (buffer-name)))
;;     (if full
;;         (setq file (expand-file-name file)))
;;     (kill-new file)
;;     (message "File `%s' copied." file)))
;; (eal-define-keys
;;  `(emacs-lisp-mode-map lisp-interaction-mode-map java-mode-map sh-mode-map
;;                        c-mode-base-map text-mode-map ruby-mode-map html-mode-map
;;                        java-mode-map conf-javaprop-mode-map conf-space-mode-map
;;                        python-mode-map)
;;  `(("C-c M-C" copy-file-name)))

;; ;; notification tool
;; (require 'todochiku-settings)

;; ;; twitter client
;; (require 'eagle-settings)
;; (require 'twit-settings)

;; ;; 模拟vi的点(.)命令
;; (require 'dot-mode)

;; ;; Emacs才是世界上最强大的IDE － 用Emaci阅读文件
;; ;; http://emacser.com/emaci.htm
;; (require 'emaci-settings)

;; ;;;###autoload
;; (defun update-current-file-autoloads (file &optional save-after)
;;   "`update-file-autoloads' for current file."
;;   (interactive "fUpdate autoloads for file: \np")
;;   (let* ((load-file (expand-file-name "loaddefs.el"))
;;          (generated-autoload-file load-file))
;;     (unless (file-exists-p load-file)
;;       (shell-command (concat "touch " load-file)))
;;     (update-file-autoloads file save-after)))

;; ;; 大纲mode
;; (require 'outline-settings)

;; ;; org是一个非常强大的GTD工具
;; (require 'org-settings)

;; ;; 强大的发布工具
;; ;; (require 'muse-settings)

;; ;; 用weblogger写WordPress博客
;; ;; http://emacser.com/weblogger.htm
;; (require 'weblogger-settings)

;; ;; 关闭buffer的时候, 如果该buffer有对应的进程存在, 不提示, 烦
;; (delq 'process-kill-buffer-query-function kill-buffer-query-functions)

;; (autoload 'org-open-file "org"
;;   "Open the file at PATH.
;; First, this expands any special file name abbreviations.  Then the
;; configuration variable `org-file-apps' is checked if it contains an
;; entry for this file type, and if yes, the corresponding command is launched.

;; If no application is found, Emacs simply visits the file.

;; With optional prefix argument IN-EMACS, Emacs will visit the file.
;; With a double \\[universal-argument] \\[universal-argument] \
;; prefix arg, Org tries to avoid opening in Emacs
;; and to use an external application to visit the file.

;; Optional LINE specifies a line to go to, optional SEARCH a string
;; to search for.  If LINE or SEARCH is given, the file will be
;; opened in Emacs, unless an entry from org-file-apps that makes
;; use of groups in a regexp matches.
;; If the file does not exist, an error is thrown.")

;; (defun open-file-with-app (file)
;;   "Open file with appropriate application."
;;   (interactive "fFile to open: ")
;;   (org-open-file file))

;; (defun open-current-file-with-app ()
;;   "Open current file with appropriate application."
;;   (interactive)
;;   (open-file-with-app buffer-file-name))

;; (eal-define-keys-commonly
;;  global-map
;;  `(("C-x M-O" open-current-file-with-app)))

;; ;; 一些有趣的东西
;; (require 'funny)

;; ;; 模拟vi的f命令
;; (require 'go-to-char)

;; ;; 轻量标记语言markdown
;; (require 'markdown-mode-settings)

;; ;; session,可以保存很多东西，例如输入历史(像搜索、打开文件等的输入)、
;; ;; register的内容、buffer的local variables以及kill-ring和最近修改的文件列表等。非常有用。
;; (require 'session-settings)

;; ;; 王纯业的desktop, 比desktop快多了
;; (require 'wcy-desktop-settings)
(require 'galen-evernote-settings)
;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(autoload 'trac-wiki "trac-wiki"
  "Trac wiki editing entry-point." t)

(autoload 'trac-wiki-mode "trac-wiki"
  "Trac wiki editing entry-point." t)

(defun trac-wiki-auto-mode-function ()
  (if (and (eq major-mode 'text-mode)
           (member (file-name-extension (buffer-file-name))
                   '("txt" "wiki"))
           (re-search-forward "^=+ [^=\n]+ =+\\s *$" nil t))
      (trac-wiki-mode)))

(add-hook 'find-file-hook
          'trac-wiki-auto-mode-function)

(setq custom-file "~/.emacs.d/configs/config-custom.el")
(load custom-file 'noerror)

