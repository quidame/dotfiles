""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                 VIM SETTINGS                                 "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" COPYRIGHT: ================================================================{{{
"                                                                              "
" © Copyright 2011-2018, quidame <quidame@poivron.org>                         "
" This file can be copied, modified and/or distributed under the terms of the  "
" GNU General Public Licence, version 3.                                       "
"                                                                              "
" Last Update: 2018-03-25                                                      "
"                                                                              "
"" ==========================================================================}}}
" IMPORTANT: ================================================================{{{
"                                                                              "
" All of these settings can be used in one or several configuration files,     "
" or on the fly, i.e. during a vim session itself. Type ':help' for internal   "
" help, ':help option-list' for short description of available options (more   "
" than 300, not all used here), and ':help option-summary' or ':help options'  "
" for more detailed infos.                                                     "
"                                                                              "
" Take care that these settings are read and applied in the same order they    "
" appear in this file. So, some of them can disable or invert previous ones.   "
" This means that the order of the options can be very important (for example, "
" the modeline, if it exists, must be placed at the end of the file - see      "
" ':help modeline' for more details; the 'highlight' commands must be called   "
" after 'background' and 'colorscheme' settings, but 't_Co' must be set before "
" them, etc.).                                                                 "
"                                                                              "
" Vim Version: =============================================================={{{
"                                                                              "
" This file has been updated with/for Vim version 8.0.0197-4; some options,    "
" such as 'cryptmethod', are not available in older versions of Vim (7.2 and   "
" less).                                                                       "
"                                                                              "
"" ==========================================================================}}}
" For Debian: ==============================================================={{{
"                                                                              "
" - /etc/vim/vimrc        (not recommended)                                    "
" - /etc/vim/vimrc.local  (recommended - loaded by the previous one)           "
" - ~/.vimrc              (custom user's file - override system settings)      "
"                                                                              "
"" ==========================================================================}}}
" For Cygwin: ==============================================================={{{
"                                                                              "
" This file doesn't need to be modified and works as is as long as Cygwin is   "
" started with unicode support, i.e. open Cygwin options, then in Text sub-    "
" menu: Locale: what you prefer, Character set: UTF-8.                         "
"                                                                              "
" Or put this line in your ~/.minttyrc (within your cygwin environment):       "
" Charset=UTF-8                                                                "
"                                                                              "
" That's all.                                                                  "
"                                                                              "
"" ==========================================================================}}}
" For Windows: =============================================================={{{
"                                                                              "
" Some UTF-8 characters may cause errors on Windows systems. Once characters   "
" causing errors at vim startup have been modified, this file may be copied at "
"                                                                              "
" - C:\Program Files\Vim\vimrc (system-wide settings)                          "
" - C:\Users\%USERNAME%\_vimrc (current user settings)                         "
" - C:\Users\%USERNAME%\vimfiles\vimrc (alternative place for user settings)   "
"                                                                              "
" Settings you should modify before using this file (with GVim) under Windows  "
" operating systems are (at least but probably more):                         "
"                                                                              "
" -set fillchars=vert:│,fold:=,stl:\ ,stlnc:\ ,diff:\¬                         "
" +set fillchars=vert:\|,fold:=,stl:\ ,stlnc:\ ,diff:\¬                        "
"                                                                              "
" -set fileencodings=ucs-bom,utf-8,default,latin1                              "
" +set fileencodings&                                                          "
"                                                                              "
" -set fileformats=unix,dos,mac                                                "
" +set fileformats=dos,unix,mac                                                "
"                                                                              "
"" ==========================================================================}}}
"                                                                              "
"" ==========================================================================}}}

" How To Debug This File: ==================================================={{{
"
" Uncomment the following line and move it elsewhere in this file to try to
" debug it. If something goes wrong with the following settings, and you don't
" know how to find the bad line(s), add a 'finish' command somewhere near the
" half of the file; if there is still an error, move the 'finish' command near
" the first quarter, otherwise move it to the third quarter; and so on:
"finish
"
"" ==========================================================================}}}

" Vi Compatibility: ========================================================={{{
"
" compatible (cp):
" Vi-compatible mode. Default is on, off when a vimrc or gvimrc file is found.
" Can be overridden in commandline with -C (compatible) or -N (nocompatible)
" arguments. This is a special kind of option, because when it's set or reset,
" other options are also changed as a side effect.
" XXX: Setting or resetting this option can have a lot of unexpected effects:
" Mappings are interpreted in another way, undo behaves differently, etc.
" If you set this option in your vimrc file, you should probably put it at
" the very start.
set nocompatible
"" ==========================================================================}}}
" Global Behaviour: ========================================================={{{
"
" all:
" Reset all settings to their default values.
"set all&
"" ==========================================================================}}}
" Encodings: ================================================================{{{
"
" encoding (enc):
" Sets the character encoding used inside Vim. It applies to text in the
" buffers, registers, Strings in expressions, text stored in the viminfo file,
" etc. It sets the kind of characters which Vim can work with.
" Default 'latin1' or value from $LANG.
set encoding&
"
" fileencoding (fenc):
" Sets the character encoding for the file of this buffer. When 'fileencoding'
" is different from 'encoding', conversion will be done when writing the file.
" When 'fileencoding' is empty, the same value as 'encoding' will be used (no
" conversion when reading or writing a file).
" Default empty.
"set fileencoding&
"
" fileencodings (fencs):
" This is a list of character encodings considered when starting to edit an
" existing file. When a file is read, Vim tries to use the first mentioned
" character encoding. If an error is detected, the next one in the list is
" tried. When an encoding is found that works, 'fileencoding' is set to it.
" If all fail, 'fileencoding' is set to an empty string, which means the value
" of 'encoding' is used.
" Default is 'ucs-bom', or 'ucs-bom,utf-8,default,latin1'
set fileencodings=ucs-bom,utf-8,default,latin1
"
" fileformat (ff):
" This gives the <EOL> of the current buffer, which is used for reading/writing
" the buffer from/to a file:
"     dos     <CR><NL>
"     unix    <NL>
"     mac     <CR>
" NOTE: This option can be used on the fly to convert a file from a format to
" another.
" Default is dos, unix or mac, depending of the OS.
"set fileformat&
"
" fileformats (ffs):
" This gives the end-of-line (<EOL>) formats that will be tried when starting
" to edit a new buffer and when reading a file into an existing buffer.
" Default for MS-Windows is dos,unix.
" Default for Unix is unix,dos.
" Default for Mac is mac,unix,dos.
set fileformats=unix,dos,mac
"" ==========================================================================}}}
" Bells: ===================================================================={{{
"
" errorbells (eb):
" Ring the bell (beep or screen flash) for error messages.
" Default is off.
set errorbells&
"
" visualbell (vb):
" Use visual bell instead of beeping on errors (as hitting <ESC> in Normal mode)
" Default is off.
set visualbell
"
" t_vb:
" The terminfo visual bell resource can be used to disable visual bell or set
" it to another value than the default (reverse video mode during a short time).
" Note: if you want to use the same settings in gvim, then add them in your
"       .gvimrc file (or /etc/vim/gvimrc.local for system wide settings).
set t_vb=
"" ==========================================================================}}}
" Cursor: ==================================================================={{{
"
" cursorcolumn (cuc):
" Highlight the screen column of the cursor with CursorColumn. Useful to align
" text.
" Default is off.
set cursorcolumn
"
" cursorline (cul):
" Highlight the screen line of the cursor with CursorLine. Useful to easily
" spot the cursor.
" Default is off.
set cursorline
"
" scrolloff (so):
" Minimal number of screen lines to keep above and below the cursor. This will
" make some context visible around where you are working. If you set it to a
" very large value (999) the cursor line will always be in the middle of the
" window (except at the start or end of the file or when long lines wrap).
" Default is 0.
set scrolloff=5
"
" Cursor Color:
" With some terminal emulators, it is not possible to redefine the cursor
" color with ':highlight Cursor'; instead, we can use a mapping (see Mappings
" section above), but it seems to have side effects.
"" ==========================================================================}}}
" Mouse: ===================================================================={{{
"
" mouse:
" Enable the use of mouse.
" Default is off.
" The mouse can be enabled for different modes:
"set mouse=       " turn the mouse off
"set mouse=n      " enable mouse in Normal mode
"set mouse=v      " enable mouse in Visual mode
"set mouse=i      " enable mouse in Insert mode
"set mouse=c      " enable mouse in Command-line mode
"set mouse=h      " enable mouse in all previous modes when in a help file
"set mouse=a      " enable mouse in all previous modes
"set mouse=r      " enable mouse for 'hit-enter' and 'more-prompt' prompt
set mouse=ar
"
" mousetime (mouset):
" Defines the maximum time in msec between two mouse clicks for the second
" click to be recognized as a multi click.
" Default is 500.
set mousetime=600
"
" mousefocus (mousef):
" Default is off.
set mousefocus&
"
" mousehide (mh):
" Default is on.
set mousehide&
"
" mouseshape (mouses):
" Default is i:beam,r:beam,s:updown,sd:cross,m:no,ml:up-arrow,v:rightup-arrow.
set mouseshape&
"
" ttymouse (ttym):
" Default depends on 'term'.
if &term=~"xterm" || &term=="screen"
  set ttymouse=xterm2
elseif &term=~"rxvt-unicode"
  set ttymouse=urxvt
elseif &term=~"linux"
  set ttymouse&
"else
"  set ttymouse=xterm
endif
"" ==========================================================================}}}
" Indentation: =============================================================={{{
"
" Enable filetype indentation:
filetype indent on
"
" autoindent (ai):
" Take indent for new line from previous line.
" Default is off.
set autoindent
"
" cindent (cin):
" Enables automatic C program indenting. smartindent has no effect if cindent
" is on.
" Default is off.
set cindent&
"
" smartindent (si):
" Do smart autoindenting when starting a new line.
" Default is off.
set smartindent
"
" And add this (see :help smartindent)
inoremap # X#
"" ==========================================================================}}}
" Search: ==================================================================={{{
"
" hlsearch (hls):
" When there is a previous search pattern, highlight all its matches.
" Default is off.
set hlsearch
"
" incsearch (is):
" While typing a search command, show where the pattern, as it was typed so
" far, matches. The matched string is highlighted. If the pattern is invalid
" or not found, nothing is shown.
" Default is off.
set incsearch
"
" ignorecase (ic):
" Ignore case in search patterns. This affects substitution commands too.
" Default is off.
set ignorecase
"
" smartcase (scs):
" Override the 'ignorecase' option if the search pattern contains upper case
" characters. Only used when the search pattern is typed and 'ignorecase'
" option is on. This has no effect on a regular expression such as [[:upper:]].
" Default is off.
set smartcase
"" ==========================================================================}}}
" Autoread Autowrite: ======================================================={{{
"
" autoread (ar):
" When a file has been detected to have been changed outside of Vim and it has
" not been changed inside of Vim, automatically read it again.
" Default is off.
set autoread
"
" autowrite (aw):
" Write the contents of the file, if it has been modified, on each :next,
" :rewind, :last, :first, :previous, :stop, :suspend, :tag, :!, :make, CTRL-]
" and CTRL-^ commands; and when a :buffer, CTRL-O, CTRL-I, or '{A-Z0-9} command
" takes one to another file.
" Default is off.
set autowrite&
"
" autowriteall (awa):
" Like 'autowrite', but also used for commands :edit, :enew, :quit, :qall,
" :exit, :xit, :recover and closing the Vim window. Setting this option also
" implies that Vim behaves like 'autowrite' has been set.
" Default is off.
set autowriteall&
"
" confirm (cf):
" When 'confirm' is on, certain operations that would normally fail because of
" unsaved changes to a buffer, e.g. :q and :e, instead raise a dialog asking if
" you wish to save the current file(s). You can still use a ! to unconditionally
" abandon a buffer.
" Default is off.
set confirm
"
" hidden:
" When off a buffer is unloaded when it is abandoned. When on a buffer becomes
" hidden when it is abandoned. The difference is that you can switch between
" buffers without need to save them immediately.
" Default is off.
set hidden
"" ==========================================================================}}}
" Backups: =================================================================={{{
"
" backup (bk):
" Make a backup before overwriting a file.
" Default is off.
set backup&
"
" backupcopy (bkc):
" When writing a file and a backup is made, this option tells how it's done.
" Default for Unix: yes, otherwise: auto
set backupcopy=yes
"
" backupdir (bdir):
" List of directories for the backup file, separated with commas.
" Default is '.,~/tmp,~/'
set backupdir=.,~/.bak.d
"
" backupext (bex):
" String which is appended to a file name to make the name of the backup file.
" Default is ~
set backupext=.bak
"
" backupskip (bks)
" A list of file patterns. When one of the patterns matches with the name of
" the file which is written, no backup file is created.
" Default is /tmp/*,$TMPDIR/*,$TMP/*,$TEMP/*
set backupskip=/tmp/*,$TMP/*
"" ==========================================================================}}}
" Swap File: ================================================================{{{
"
" directory (dir):
" List of directory names for the swap file, separated with commas. Empty means
" that no swap file will be used (recovery is impossible!).
" Default for Unix is '.,~/tmp,/var/tmp,/tmp'.
set directory=.,/var/tmp,~/.vim
"
" swapfile (swf):
" Use a swapfile for the buffer (useful in case of crash).
" Default in on.
set swapfile&
"" ==========================================================================}}}
" Formatting Text: =========================================================={{{
"
" formatoptions (fo):
" This is a sequence of letters which describes how automatic formatting is to
" be done.
" Available flags are: {{{
"   t   Auto-wrap text using 'textwidth'
"   c   Auto-wrap comments using 'textwidth', inserting the current comment
"       leader automatically.
"   r   Automatically insert the current comment leader after hitting <Enter>
"       in Insert mode.
"   o   Automatically insert the current comment leader after hitting 'o' or
"       'O' in Normal mode.
"   q   Allow formatting of comments with 'gq'.
"       Note that formatting will not change blank lines or lines containing
"       only the comment leader. A new paragraph starts after such a line,
"       or when the comment leader changes.
"   w   Trailing white space indicates a paragraph continues in the next line.
"       A line that ends in a non-white character ends a paragraph.
"   a   Automatic formatting of paragraphs. Every time text is inserted or
"       deleted the paragraph will be reformatted. When the 'c' flag is present
"       this only happens for recognized comments.
"   n   When formatting text, recognize numbered lists. This actually uses the
"       'formatlistpat' option, thus any kind of list can be used. The indent
"       of the text after the number is used for the next line. The default is
"       to find a number, optionally followed by '.', ':', ')', ']' or '}'.
"       Note that 'autoindent' must be set too. Doesn't work well together with
"       '2'.
"       Example:
"       1. the first item
"          wraps
"       2. the second item
"   2   When formatting text, use the indent of the second line of a paragraph
"       for the rest of the paragraph, instead of the indent of the first line.
"       This supports paragraphs in which the first line has a different indent
"       than the rest. Note that 'autoindent' must be set too.
"       Example:
"               first line of a paragraph,
"       second line of the same paragraph,
"       and third line of the paragraph.
"   v   Vi-compatible auto-wrapping in insert mode: Only break a line at a blank
"       that you have entered during the current insert command. (Note: this is
"       not 100% Vi compatible. Vi has some 'unexpected features' or bugs in this
"       area. It uses the screen column instead of the line column.)
"   b   Like 'v', but only auto-wrap if you enter a blank at or before the wrap
"       margin. If the line was longer than 'textwidth' when you started the
"       insert, or you do not enter a blank in the insert before reaching
"       'textwidth', Vim does not perform auto-wrapping.
"   l   Long lines are not broken in insert mode: When a line was longer than
"       'textwidth' when the insert command started, Vim does not automatically
"       format it.
"   m   Also break at a multi-byte character above 255. This is useful for Asian
"       text where every character is a word on its own.
"   M   When joining lines, don't insert a space before or after a multi-byte
"       character. Overrules the 'B' flag.
"   B   When joining lines, don't insert a space between two multi-byte
"       characters. Overruled by the 'M' flag.
"   1   Don't break a line after a one-letter word. It's broken before it
"       instead (if possible).
"
" With 't' and 'c' you can specify when Vim performs auto-wrapping:
" value action
" ''    no automatic formatting (you can use 'gq' for manual formatting)
" 't'   automatic formatting of text, but not comments
" 'c'   automatic formatting for comments, but not text (good for C code)
" 'tc'  automatic formatting for text and comments
"
" Note that when 'textwidth' is 0, Vim does no automatic formatting anyway (but
" does insert comment leaders according to the 'comments' option). An exception
" is when the 'a' flag is present. }}}
" Default is tcq.
set formatoptions&
set formatoptions+=or
"
" textwidth (tw):
" Maximum width of text that is being inserted. A longer line will be broken
" after white space to get this width. A zero value disables this.
" Default is 0.
set textwidth=0
"
" wrap:
" When on, lines longer than the width of the window will wrap and displaying
" continues on the next line. When off lines will not wrap and only part of
" long lines will be displayed. When the cursor is moved to a part that is not
" shown, the screen will scroll horizontally.
" Default is on.
set wrap&
"" ==========================================================================}}}
" Folds: ===================================================================={{{
"
" foldclose (fcl):
" When set to 'all', a fold is closed when the cursor isn't in it and its level
" is higher than 'foldlevel'. Useful if you want folds to automatically close
" when moving out of them.
" Default empty.
set foldclose=all
"
" foldcolumn (fdc):
" When non-zero, a column with the specified width is shown at the side of the
" window which indicates open and closed folds. The maximum value is 12.
" Default is 0.
set foldcolumn&
"
" foldenable (fde):
" When off, all folds are open. This option can be used to quickly switch
" between showing all text unfolded and viewing the text with folds (including
" manually opened or closed folds). It can be toggled with the 'zi' command.
" The 'foldcolumn' will remain blank when 'foldenable' is off.
" Default is on.
set foldenable&
"
" foldmethod (fdm):
" The kind of folding used for the current window. Possible values:
" manual    Folds are created manually.
" indent    Lines with equal indent form a fold.
" expr      'foldexpr' gives the fold level of a line.
" marker    Markers are used to specify folds.
" syntax    Syntax highlighting items specify folds.
" diff      Fold text that is not changed.
" Default is empty.
set foldmethod=marker
"
" See also 'fillchars' (in Miscellaneous section)
"" ==========================================================================}}}
" Miscellaneous: ============================================================{{{
"
" autochdir (acd):
" When on, Vim will change the current working directory whenever you open a
" file, switch buffers, delete a buffer or open/close a window. It will change
" to the directory containing the file which was opened or selected.
" Note: When this option is on some plugins may not work.
" Default is off.
set autochdir&
"
" background (bg):
" When set to 'dark', Vim will try to use colors that look good on a dark
" background. When set to 'light', Vim will try to use colors that look good
" on a light background. See also the colorscheme command in the 'Syntax'
" section.
" Default is dark or light (depends on the terminal type).
"set background=dark
"
" backspace (bs):
" Influences the working of <BS>, <Del>, CTRL-W and CTRL-U in Insert mode.
" indent,eol,start allows backspacing over everything.
" Default empty.
set backspace=indent,eol,start
"
" clipboard (cb):
" This option is a list of comma separated names to define the clipboard
" access. These names are recognized:
"   unnamed
"   unnamedplus
"   autoselect
"   autoselectml
"   html
"   exclude:{pattern}
" default is 'autoselect,exclude:cons\|linux' for X-windows, '' otherwise.
if has('unnamedplus')
  set clipboard=unnamedplus,autoselect,exclude:cons\|linux\|screen.linux
endif
"
" cryptmethod (cm):
" Method used for encryption when the buffer is written to a file:
"   zip:
"     PkZip compatible method. A weak kind of encryption. Backwards compatible
"     with Vim 7.2 and older.
"   blowfish:
"     Blowfish method. Strong encryption. Requires Vim 7.3 or later, files can
"     NOT be read by Vim 7.2 and older. This adds a seed to the file, every
"     time you write the file the encrypted bytes will be different.
" Default is zip.
set cryptmethod=blowfish
"
" dictionary (dict):
" List of file names, separated by commas, that are used to lookup words for
" keyword completion commands (with CTRL-X CTRL-K). Each file should contain
" a list of words. This can be one word per line, or several words per line,
" separated by non-keyword characters (white space is preferred).
" On Debian, you can find a such dictionary in /usr/share/dict/words.
" Default empty.
set dictionary=/usr/share/dict/words
"
" digraph (dg):
" Enable the entering of digraphs in Insert mode with {char1} <BS> {char2}.
" Type ':digraphs' to see the full list of available digraphs (ex: ss ß).
" Not very useful always enabled, but interesting to have a shortcut to
" toggle the option (see far below).
" Default is off.
set digraph&
"
" fillchars (fcs):
" Characters to fill the statuslines and vertical separators.
" Default is 'vert:|,fold:-'.
set fillchars=vert:│,fold:=,stl:\ ,stlnc:\ ,diff:\¬
"
" history (hi):
" The number of entries in history file.
" Default is 20.
set history=500
"
" listchars (lcs):
" Strings to use in 'list' mode. It is a comma separated list of string
" settings (eol, tab, trail, extends, precedes, conceal, nbsp)
" Default is 'eol:$'.
set listchars&
set listchars+=tab:¦¬
set listchars+=trail:·
set listchars+=extends:>
set listchars+=precedes:<
set listchars+=conceal:^
set listchars+=nbsp:%
"
" restorescreen (rs):
" Only for Windows. Unfortunately, the escape sequence given in the help does
" not work in my case. But the reset of t_ti and t_te to NULL value works fine
" to NOT restore the screen (in xterm, screen and tmux); there is a remapping
" below.
" Default is on.
set restorescreen&
"if &term=~"xterm" || &term=~"screen"
  "set t_ti=\E7\E[?47h' (from screenrc)
  "set t_ti=7[r[?47h
  ""set t_ti=7[?47h
  ""set t_ti=7[r[?47h

  "set t_te=\E[2J\E[?47l\E8 (from screenrc)
  "set t_te=[?478
  ""set t_te=[2J[?47l8
  ""set t_te=[2J[?478
"endif
"
" shell (sh):
" Shell to use with :! and :.! commands.
" For Windows, shell=C:\Windows\System32\cmd.exe; otherwise, default is the
" ${SHELL} environment variable.
set shell&
"
" shortmess (shm):
" This option helps to avoid all the hit-enter prompts caused by file messages,
" for example  with CTRL-G, and to avoid some other messages.
" Default is filnxtToO
set shortmess&
set shortmess+=I
"
" spelllang (spl):
" A comma separated list of word list names. When the 'spell' option is on,
" spellchecking will be done for these languages.
" Default is en.
set spelllang&
"set spelllang+=de
"set spelllang+=fr
"set spelllang+=es
"set spelllang+=it
"set spelllang+=hu
"
set splitbelow
set splitright
"
" startofline (sol):
" When on the commands listed below move the cursor to the first non-blank of
" the line. When off the cursor is kept in the same column (if possible). This
" applies to the commands: CTRL-D, CTRL-U, CTRL-B, CTRL-F, G, H, M, L, gg, and
" to the commands d, << and >> with a linewise operator, with % with a count
" and to buffer changing commands (CTRL-^, :bnext, :bNext, etc.).
" Default is on.
set nostartofline
"
" tabpagemax (tpm):
" Maximum number of tab pages to be opened by the '-p' command line argument
" or the ":tab all" command.
" Default is 10.
set tabpagemax=24
"
" whichwrap (ww):
" Allow specified keys that move the cursor left/right to move to the
" previous/next line when the cursor is on the first/last character in
" the line.
" Default is b,s.
set whichwrap=b,s,<,>,[,]
"
" wildmenu (wmnu):
" When 'wildmenu' is on, command-line completion operates in an enhanced mode.
" On pressing 'wildchar' (usually <Tab>) to invoke completion, the possible
" matches are shown just above the command line, with the first match
" highlighted (overwriting the status line, if there is one). Keys that show
" the previous/next match, such as <Tab> or CTRL-P/CTRL-N, cause the highlight
" to move to the appropriate match.
" Default is off.
set wildmenu
"
" wildmode (wim):
" Completion mode that is used for the character specified with 'wildchar'.
" It is a comma separated list of up to four parts. Each part specifies what
" to do for each consecutive use of 'wildchar'. The first part specifies the
" behavior for the first use of 'wildchar', the second part for the second
" use, etc. Possible parts are '', 'full', 'longest', 'longest:full', 'list',
" 'list:full' and 'list:longest'.
" Default is full.
set wildmode&
"" ==========================================================================}}}
" Filetype Specific Options: ================================================{{{
"
" This overrides previous settings for some filetypes (as shell scripts, (x)html
" documents, etc.)
"
if &filetype=="help"
  set cursorcolumn&
  set cursorline&
  "set scrolloff=999

elseif &filetype=="conque_term"
  set cursorcolumn&
  set cursorline&
"
"elseif &filetype=="sh" || &filetype=="conf"
"  set textwidth=80
"  set formatoptions=roc
"
"elseif &filetype=="html" || &filetype=="xml" || &filetype=="xhtml"
"  set expandtab
"  set shiftwidth=2
"  set softtabstop=2
"  set tabstop=2
"
endif
"" ==========================================================================}}}
" Terminal Specific Presettings: ============================================{{{
"
" These settings take into account what version of vim is running (vim or gvim)
" and for vim itself, if it is running from xterm, console, screen, rxvt, etc.
" This is to define correct color schemes and presettings.
" Note:
" In a lot of cases, the colorscheme MUST BE SET BEFORE the background option.
" The t_Co option (8, 16, 88 or 256 colors) MUST BE SET BEFORE highlight groups.
"
if has("gui_running")
  set guioptions=agimt  " default is 'agimrLtT'
  set guifont=Courier\ 10\ Pitch\ Italic\ 15 " This is what I use in my terminal

else
  " Adjust the number of colors and terminfo settings for each TERM.
  " XXX :help xterm-color
  "
  " - 8 colors:
  "   set t_Sb=[4%p1%dm   " background color
  "   set t_Sf=[3%p1%dm   " foreground color
  "
  " - 16 colors:
  "   set t_AB=[%?%p1%{8}%<%t25;%p1%{40}%+%e5;%p1%{32}%+%;%dm   |rxvt
  "   set t_AF=[%?%p1%{8}%<%t22;%p1%{30}%+%e1;%p1%{22}%+%;%dm   |
  "   or:
  "   set t_AB=[%?%p1%{8}%<%t%p1%{40}%+%e%p1%{92}%+%;%dm        |xterm
  "   set t_AF=[%?%p1%{8}%<%t%p1%{30}%+%e%p1%{82}%+%;%dm        |
  "   or:
  "   set t_AB=[%?%p1%{8}%<%t4%p1%d%e%p1%{32}%+%d;1%;m          |Eterm
  "   set t_AF=[%?%p1%{8}%<%t3%p1%d%e%p1%{22}%+%d;1%;m          |
  "   or:
  "   set t_AB=[%?%p1%{8}%<%t%p1%{40}%+%e%p1%{32}%+5;%;%dm      |TTpro
  "   set t_AF=[%?%p1%{8}%<%t%p1%{30}%+%e%p1%{22}%+1;%;%dm      |
  "
  " - 256 colors:
  "   set t_AB=[48;5;%dm
  "   set t_AF=[38;5;%dm
  "
  " ________________________________________________________
  "|    TERM name           |    in Screen        | Colors  |
  "|                        |                     |         |
  "|linux                   |screen.linux         |         |
  "|xterm                   |screen               |         |
  "|rxvt                    |screen.rxvt          |         |
  "|mlterm                  |screen.mlterm        |         |
  "|kterm                   |screen               |         |
  "|jfbterm                 |screen               |         |
  "|Eterm                   |screen.Eterm         |         |
  "|xterm-r6                |screen.xterm-r6      |         |
  "|xterm-color             |screen               |         |
  "|xterm-256color          |screen               |         |
  "|rxvt-unicode-256color   |screen               |         |
  "|________________________|_____________________|_________|

  if &term=~"xterm" || &term=="screen"
    " even with a 256color xterm, the default (dark) colorscheme gives best
    " contrast when set with 16 colors:
    set t_Co=16
    "set t_AB=[%?%p1%{8}%<%t%p1%{40}%+%e%p1%{92}%+%;%dm
    "set t_AF=[%?%p1%{8}%<%t%p1%{30}%+%e%p1%{82}%+%;%dm
    "set t_Co=256
    "set t_AB=[48;5;%dm
    "set t_AF=[38;5;%dm

    "set t_AB=[%?%p1%{8}%<%t25;%p1%{40}%+%e5;%p1%{32}%+%;%dm
    "set t_AF=[%?%p1%{8}%<%t22;%p1%{30}%+%e1;%p1%{22}%+%;%dm
    "set t_AB=[%?%p1%{8}%<%t%p1%{40}%+%e%p1%{32}%+5;%;%dm
    "set t_AF=[%?%p1%{8}%<%t%p1%{30}%+%e%p1%{22}%+1;%;%dm
    "set t_AB=[%?%p1%{8}%<%t%p1%{40}%+%e%p1%{92}%+%;%dm
    "set t_AF=[%?%p1%{8}%<%t%p1%{30}%+%e%p1%{82}%+%;%dm
    "set t_AB=[%?%p1%{8}%<%t4%p1%d%e%p1%{32}%+%d;1%;m
    "set t_AF=[%?%p1%{8}%<%t3%p1%d%e%p1%{22}%+%d;1%;m

  elseif &term=~"linux" || &term=~"rxvt" || &term=="jfbterm"
    " Force 16 colors on linux consoles
    set t_Co=16
    set t_AB=[%?%p1%{8}%<%t25;%p1%{40}%+%e5;%p1%{32}%+%;%dm
    set t_AF=[%?%p1%{8}%<%t22;%p1%{30}%+%e1;%p1%{22}%+%;%dm

  "elseif &term=="mlterm"
  "  set t_Co=16

  "elseif &term=="screen.mlterm"
  "  set t_Co=16

  elseif &term=="Eterm"
  "  set t_Co=16
  "  set t_AB=[%?%p1%{8}%<%t25;%p1%{40}%+%e5;%p1%{32}%+%;%dm
  "  set t_AF=[%?%p1%{8}%<%t22;%p1%{30}%+%e1;%p1%{22}%+%;%dm

  elseif &term=="screen.Eterm"
  "  set t_Co=256
  "  set t_AB=[48;5;%dm
  "  set t_AF=[38;5;%dm

  elseif has("terminfo")
  "  set t_Co=8
  "  set t_Sb=[4%p1%dm
  "  set t_Sf=[3%p1%dm

  else
    " This is the default if Terminfo is supported.
  "  set t_Co=8
  "  set t_Sb=[4%dm
  "  set t_Sf=[3%dm
  endif
endif

  " Use different cursor shapes for Insert Mode and other modes (but this
  " affects behaviour of the cursor after vim has been closed). This does
  " not work if the cursor shape and style is set in the terminal itself.
  " XXX needs more tests.
  " "\<Esc>[1 q": blinking block
  " "\<Esc>[2 q": static block
  " "\<Esc>[3 q": blinking underline
  " "\<Esc>[4 q": static underline
  if &term=="xterm-color"
    " Start Insert:
    let &t_SI="\<Esc>[1 q"
    " End Insert:
    let &t_EI="\<Esc>[4 q"
  endif
"" ==========================================================================}}}
" Syntax: ==================================================================={{{
"
" Define a dark colorscheme. Otherwise 'default' is used, but in that case
" 'background' could be explicitly set to 'dark'.
colorscheme cyanellow
"
" Enable syntax highlighting.
" Default is off.
syntax on
"
" Enable filetype plugins.
" Default is off.
filetype plugin on
"
" For readline syntax highlighting (*/inputrc and ~/.inputrc) - see
" :help readline.vim
let readline_has_bash=1
" sh syntax highlighting is not as so pretty as its bash or posix variants:
let is_bash=1
let is_posix=1
"
"" ==========================================================================}}}
" Highlight Groups: ========================================================={{{
"
" Custom color scheme of the statusline:
highlight User1   term=underline  cterm=underline ctermbg=none  ctermfg=Red
highlight User1   gui=underline   guibg=bg        guifg=#ff3333
"
highlight User2   term=underline  cterm=underline ctermbg=none  ctermfg=Green
highlight User2   gui=underline   guibg=bg        guifg=Green
"
highlight User3   term=underline  cterm=underline ctermbg=none  ctermfg=Yellow
highlight User3   gui=underline   guibg=bg        guifg=Yellow
"
highlight User4   term=underline  cterm=underline ctermbg=none  ctermfg=Blue
highlight User4   gui=underline   guibg=bg        guifg=Blue
"
highlight User5   term=underline  cterm=underline ctermbg=none  ctermfg=Magenta
highlight User5   gui=underline   guibg=bg        guifg=Magenta
"
highlight User6   term=underline  cterm=underline ctermbg=none  ctermfg=DarkCyan
highlight User6   gui=underline   guibg=bg        guifg=DarkCyan
"
highlight User7   term=underline  cterm=underline ctermbg=none  ctermfg=White
highlight User7   gui=underline   guibg=bg        guifg=White
"
"" ==========================================================================}}}
" Terminal Specific Settings: ==============================================={{{
"
" Now adjust highlight groups for each TERM to try to have the same look, even
" if the color support (8, 16 or 256 colors) of the terminal is not the same.
"
if &term=="xterm" || &term=="screen" || &term=="rxvt" || &term=="screen.rxvt"
  " Nothing to do (the previous settings are used as optimized defaults for
  " xterm, screen and rxvt terminal types).

elseif &term=~"linux"
  highlight User1         cterm=none  ctermbg=DarkGray
  highlight User2         cterm=none  ctermbg=DarkGray
  highlight User3         cterm=none  ctermbg=DarkGray
  highlight User4         cterm=none  ctermbg=DarkGray
  highlight User5         cterm=none  ctermbg=DarkGray
  highlight User6         cterm=none  ctermbg=DarkGray
  highlight User7         cterm=none  ctermbg=DarkGray

elseif &term=="jfbterm"
  "highlight User1         cterm=none
  "highlight User2         cterm=none
  "highlight User3         cterm=none
  "highlight User4         cterm=none
  "highlight User5         cterm=none
  "highlight User6         cterm=none
  "highlight User7         cterm=none

elseif &term=="kterm"

elseif &term=="xterm-color"

  " Maybe is there something to add for Eterm, mlterm and their screen
  " sessions, but… DIY!

endif
"" ==========================================================================}}}
" Statusline: ==============================================================={{{
"
" laststatus (ls):
" The value of this option influences when the last window will have a status
" line.
" Default is 1.
"set laststatus=0     " never display the statusline
"set laststatus=1     " reserve only the last line for info
set laststatus=2      " always show the statusline
"
" ruler (ru):
" Show the line and column number of the cursor position, separated by a comma.
" When there is room, the relative position of the displayed text in the file
" is shown on the far right.
" Default is off.
set ruler
"
" rulerformat (ruf):
" When this option is not empty, it determines the content of the ruler string,
" as displayed for the 'ruler' option.
" Default empty.
set rulerformat&
"
" statusline (stl):
" When nonempty, this option determines the content of the status line. Can be
" global or local to window. When empty, and the 'ruler' option is set, the
" statusline is displayed as determined by 'rulerformat'.
" Default empty.
set statusline&
"
if &filetype!="help" && &filetype!="netrw" && &filetype!="nerdtree" && &filetype!="conque_term" && &filetype!="qf" && &buftype!="help" && &buftype!="quickfix"
  " Display (truncated) full path of the file with 'User3' highlight setting,
  " then add 'modified' and 'readonly' optional flags with 'User1' / 'User3'
  " highlight settings:
  setlocal statusline+=%3*%<%F\ %1*%m
  if v:progname=~"view"
    setlocal statusline+=%3*%r
  else
    setlocal statusline+=%r%3*
  endif
  " Divide the line (what follows %= is right aligned) and display number of
  " the buffer:
  setlocal statusline+=%=%a
  " Align and display the file type (or 'none') with 'User5' highlight settings:
  setlocal statusline+=%16.(%5*[%{strlen(&filetype)?&filetype:'none'}]%)
  " Display file format and file encoding (or default encoding) with 'User6'
  " highlight settings:
  setlocal statusline+=%6*[%{&fileformat},\ %{strlen(&fileencoding)?&fileencoding:&encoding}]%3*
  " Align and display ASCII and Hex values of the character under the cursor
  " with 'User7' highlight settings:
  setlocal statusline+=%16.(%7*<%03.5b>\ <0x%02.4B>%)%3*
  " Align and display the position of the cursor:
  setlocal statusline+=%16.(%l/%L,%c%V%)\ (%P)
  "
  " Store it into a variable and use it later in autocommands with:
  " setl statusline=%!local_stl (by Marcin Szamotulski <mszamot@gmail.com>)
  " let &l:statusline=local_stl (by Ben Fritz <fritzophrenic@gmail.com>)
  let local_stl=&statusline
endif
"
"" ==========================================================================}}}
" Autocommands: ============================================================={{{
"
if !exists("already_loaded")
  " ensure that Vim includes the following autocommands only once:
  let g:already_loaded=1

  " put autocommands in groups to delete them globally before sourcing this
  " file from itself

  augroup common
    autocmd!
    " start editing new files in insert mode:
    autocmd BufNewFile * star
    " jump to the last position when reopening a file:
    autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
    " don't write swapfile on most commonly used directories for NFS mounts or
    " USB sticks:
    autocmd BufNewFile,BufReadPre /media/*,/run/media/*,/mnt/* set directory=/var/tmp,~/.vim
  augroup END

  augroup userland
    autocmd!
    " This is the place now for system-wide configuration:
    autocmd BufEnter,TabEnter,WinEnter * set whichwrap=b,s,<,>,[,]

    " Mark trailing spaces
    autocmd Colorscheme,BufEnter,TabEnter,WinEnter * highlight def link TrailingSpace Error | match TrailingSpace /\s\+$/

    " Reload UserN highlight groups AFTER the colorscheme
    autocmd ColorScheme *
      \ hi User1 term=underline cterm=underline ctermbg=none ctermfg=Red      gui=underline guibg=bg guifg=#ff3333  |
      \ hi User2 term=underline cterm=underline ctermbg=none ctermfg=Green    gui=underline guibg=bg guifg=Green    |
      \ hi User3 term=underline cterm=underline ctermbg=none ctermfg=Yellow   gui=underline guibg=bg guifg=Yellow   |
      \ hi User4 term=underline cterm=underline ctermbg=none ctermfg=Blue     gui=underline guibg=bg guifg=Blue     |
      \ hi User5 term=underline cterm=underline ctermbg=none ctermfg=Magenta  gui=underline guibg=bg guifg=Magenta  |
      \ hi User6 term=underline cterm=underline ctermbg=none ctermfg=DarkCyan gui=underline guibg=bg guifg=DarkCyan |
      \ hi User7 term=underline cterm=underline ctermbg=none ctermfg=White    gui=underline guibg=bg guifg=White
  augroup END

  augroup statuslines
    autocmd!
    " Show custom statusline only on active window/tab/buffer (except for some
    " filetypes or buftypes):
    autocmd BufLeave,TabLeave,WinLeave * setlocal statusline&
    autocmd BufEnter,TabEnter,WinEnter * if &filetype=="help" || &filetype=="netrw" || &filetype=="nerdtree" || &filetype=="conque_term" || &filetype=="qf" || &buftype=="help" || &buftype=="quickfix" | setlocal statusline& | else | setlocal statusline=%!local_stl | endif
    autocmd FileType help,netrw,nerdtree,conque_term,qf setlocal statusline&
  augroup END

  augroup filetypes
    autocmd!
    " Show cursor line and column only on active window/tab/buffer (except for
    " help and conque_term filetypes):
    autocmd BufLeave,TabLeave,WinLeave * set cursorline& cursorcolumn&
    autocmd BufEnter,TabEnter,WinEnter * if &filetype=="help" || &filetype=="conque_term" || v:progname=~"view" | set cursorline& cursorcolumn& | else | set cursorline cursorcolumn | endif

    " Experimental (not sure it is so useful with mouse support enabled):
    " reset 'scrolloff' to a big value for help files (but remember that I
    " prefer to open different buffers in different tabs instead of windows):
    autocmd BufEnter,TabEnter,WinEnter * if &filetype=="help" || &buftype=="help" || v:progname=~"view" | set scrolloff=999 | else | set scrolloff=5 | endif

    " reload configuration file when it is edited:
    autocmd BufWritePre */.\?vimrc,*/vimrc.local unlet g:already_loaded | augroup! filetypes
    autocmd BufWritePre */.\?vimrc,*/vimrc.local set all& | source % | set ft=vim et ts=2 sts=2 sw=2 tw=80 fo=roc fdm=marker fcl=all

    " delete trailing spaces (see also the 'Mappings' section):
    autocmd BufWritePre control,changelog,*.vim,*/.\?vimrc,*/vimrc.local,*.yml %s/\s\+$//e
    autocmd BufWritePre * if &filetype=="vim" || &filetype=="yaml" || &filetype=="debchangelog" | %s/\s\+$//e | endif

    " Ansible's yaml indentation:
    autocmd BufEnter,TabEnter,WinEnter *.yml set et ts=2 sw=2 sts=2
  augroup END
endif
"
"" ==========================================================================}}}
" Mappings: ================================================================={{{
" Remember that:
" - some keys or combinations of keys are already assigned in Vim; remap them
"   if you really know what you are doing…
" - some keystrokes can be caught by underlying applications (Screen, Terminal,
"   Desktop…); disable them first if you really know what you are doing. For
"   example, in xfce4-terminal, <F1> is caught by the terminal and opens its
"   help documentation in the default web browser. To disable this annoying
"   behaviour, add 'AccelContents=' in terminalrc (in /etc/xdg/Terminal or
"   ~/.config/Terminal). Another example: Screen uses <Ctrl-A> as prefix to a
"   lot of predefined internal commands (switch, split, copy, paste and so on),
"   so don't use <Ctrl-A> in a :map command if you intend to use Vim inside a
"   Screen session. The default prefix for TMux internal commands is <Ctrl-B>.
"
" 1. Make Vim/Gvim behave consistently with other applications.
"
" Open a help tab in the full height and width of the terminal window in any
" mode with <F1>.  /!\  To make it working, you may have to disable this key
" in the underlying terminal application, or desktop, etc.
nnoremap <silent> <F1> :tab :help<CR>
inoremap <silent> <F1> <Esc>:tab :help<CR>
vnoremap <silent> <F1> <Esc>:tab :help<CR>
cnoremap <silent> <F1> <End><C-U>tab :help<CR>
"
" Be consistent with mc. Again, Function keys may be caught by another
" application vim is running onto (terminal multiplexer, terminal, window
" manager, desktop environment...)
nnoremap <silent> <F10> :quitall<CR>
inoremap <silent> <F10> <Esc>:quitall<CR>
vnoremap <silent> <F10> <Esc>:quitall<CR>
cnoremap <silent> <F10> <Esc>:quitall<CR>
" and:
nnoremap <silent> <F3> :quitall<CR>
inoremap <silent> <F3> <Esc>:quitall<CR>
vnoremap <silent> <F3> <Esc>:quitall<CR>
cnoremap <silent> <F3> <Esc>:quitall<CR>
"
" Cut/Copy/Paste (note that this is a remapping of <Ctrl-V>, <Ctrl-C> and
" <Ctrl-X>; moreover, in Insert Mode <Ctrl-V> is used as prefix when you
" need to write control characters: <Ctrl-V><Ctrl-G> gives )
"
" In Visual Mode: copy the highlighted text in the ('+' register) common
" clipboard with <Ctrl-C>; delete highlighted text and save it in the
" clipboard with <Ctrl-X>; replace highlighted text by the content of the
" clipboard with <Ctrl-V>;
" In Normal Mode: paste the content of the clipboard with <Ctrl-V> (and then
" use <Ctrl-Q> as replacement for <Ctrl-V> 'Visual Block' keystroke);
" In Insert Mode: paste the content of the clipboard with <Ctrl-V> and come
" back in Insert Mode, placing the cursor just after the pasted string.
"vnoremap <C-c> "+y
"vnoremap <C-x> "+d
"vnoremap <C-v> "*d"+P
"nnoremap <C-v> "+p
"inoremap <C-v> <Esc>"+pa
"
" So, keep a backdoor for each remapped keystroke, to retrieve standard
" behaviour (and see also the 'clipboard' option):
"nmap <silent> <bslash><C-c> :vunmap <C-v><C-c><CR>
"nmap <silent> <bslash><C-x> :vunmap <C-v><C-x><CR>
"nmap <silent> <bslash><C-v> :vunmap <C-v><C-v><CR>:nunmap <C-v><C-v><CR>:iunmap <C-v><C-v><CR>
"
" 2. Other things (some have been found on the vim@vim.org list)
"
" Move around the tabs with <Tab> and <Shift-Tab> (and when on last tab,
" :tabnext jumps to the first one; when on first tab, :tabprevious jumps to
" the last one). Probably my most useful mapping of all.
nnoremap <silent> <Tab> :tabnext<CR>
nnoremap <silent> <S-Tab> :tabprevious<CR>
"
" Remove trailing spaces (this should be automated for some filetypes; see
" 'Autocommands' above); the <Meta> key is <AltGr>, and this doesn't work in
" cygwin/windows (caught to open the window menu):
nnoremap <silent> <M-Space> :%s/\s\+$//e<CR>
inoremap <silent> <M-Space> <Esc>:%s/\s\+$//e<CR>A
"
nnoremap <silent> <M-u> :redo<CR>
"
" Add the word under the cursor to a list of alternative search patterns (the
" first one being build with the <*> key)
nnoremap £ /<C-r>/<bslash><bar><bslash><lt><C-r><C-w><bslash>><CR>
"
" Change cursor color. Take care that this may disturb the underlying terminal
" and you may experience issues with non-ascii characters and backspace key
" ('reset' may be enough to repair it, maybe not)
"noremap <silent> @0 :!echo -ne "\033]12;black\007"<CR><CR>
"noremap <silent> @1 :!echo -ne "\033]12;red\007"<CR><CR>
"noremap <silent> @2 :!echo -ne "\033]12;green\007"<CR><CR>
"noremap <silent> @3 :!echo -ne "\033]12;yellow\007"<CR><CR>
"noremap <silent> @4 :!echo -ne "\033]12;blue\007"<CR><CR>
"noremap <silent> @5 :!echo -ne "\033]12;magenta\007"<CR><CR>
"noremap <silent> @6 :!echo -ne "\033]12;cyan\007"<CR><CR>
"noremap <silent> @7 :!echo -ne "\033]12;white\007"<CR><CR>
"
" Scroll (f: forward, b: backward) in INSERT mode as in NORMAL mode:
inoremap <C-f> <Esc><C-f>i
inoremap <C-b> <Esc><C-b>i

nnoremap <Space> <C-f>
nnoremap b <C-b>
"
" 3. With a map leader (does not work in Insert Mode).
"
" Begin macros with a mapleader (default is backslash '\'). And define this
" mapleader globally (with g:). Note that only some characters can be used,
" because a lot of characters are already assigned (to run or repeat a command,
" search a pattern, move the cursor, etc.):
"let g:mapleader='\'
"let g:mapleader=','
let g:mapleader=';'
" XXX: see in the "Miscellaneous" section
"
" Clear highlighted searches, redraw syntax and display:
nnoremap <Leader><Leader> :noh<CR>:syntax sync fromstart<CR><C-l>
"
" Open a new tab in last position:
nnoremap <silent> <Leader>t :tabnew<CR>:tabmove<CR>
"
" Open the help in a new tab:
nnoremap <silent> <Leader>h :tab :help<CR>
"
" Add a new empty line after or before the one under the cursor:
nnoremap <Leader><Up> O<Esc>0d$
nnoremap <Leader><Down> o<Esc>0d$
"
" Source this file or edit it in a new tab:
let g:vimrc=expand('<sfile>:p')
let localft=&filetype
nnoremap <silent> <Leader>s :exe "source " . g:vimrc<CR>:let &l:filetype=localft<CR>
nnoremap <silent> <Leader>e :exe "tabedit " . g:vimrc<CR>
"
" Don't restore the screen in its previous state when exiting vim. This is for
" xterm, or screen when 'altscreen on'; linux console doesn't restore its
" state by itself. Also note that the opposite, as given in vim help (see ":h
" 'restorescreen'") doesn't work.
nnoremap <silent> <Leader>k :set t_ti= t_te=<CR>
"nnoremap <silent> <Leader>r :set t_ti=7[r[?47h t_te=[2J[?478<CR>
"
" Toggle showing cursor position, line numbers and non-printable chars, spell
" checking, digraph option and so on:
nmap <Leader>C :set cursorline! cursorcolumn!<CR>
nmap <Leader>D :set digraph!<CR>
nmap <Leader>L :set list!<CR>
nmap <Leader>N :set number!<CR>
nmap <Leader>S :set spell!<CR>
"
"" ==========================================================================}}}
" Commands: ================================================================={{{
" Here are some tips and tricks found on the vim@vim.org maillist:
"
" Switch to the previously displayed buffer, and then delete the previously
" displayed buffer, i.e the first one
command! BD b # | bd #
"" ==========================================================================}}}
" Digraphs: ================================================================={{{
"
" Add Jolly Roger and other danger flags:
digraphs af 9762    " ☢   Atomic Flag
digraphs bf 9763    " ☣   Biologic Flag
digraphs df 9888    " ⚠   Danger Flag
digraphs ef 9889    " ⚡   Electric Flag
digraphs sf 9760    " ☠   Skull Flag
"
" Other things:
digraphs PS 8200    "     Punctuation Space
digraphs ee 8230    " …   Ellipsis
"" ==========================================================================}}}
" Modeline: ================================================================={{{
"
" modeline (ml):
" Default is on (off for root).
set modeline
"
" vim: set et ts=2 sts=2 sw=2 tw=80 fo=roc fdm=marker fcl=all fenc=utf-8:
"" ==========================================================================}}}
