" Vim color file
"
" Colorscheme:  cyanellow
" Description:  This colorscheme has been built mainly for 16-color terminals.
"               The GUI colors have been set to match the terminal colors (on
"               my system) and so Vim and GVim can be used indifferently.
"               Default settings are kept for B&W terminals.
" Last Change:  2018 March 25
" Maintainer:   quidame <quidame@poivron.org>

set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = expand('<sfile>:t:r')


highlight Normal  cterm=NONE  ctermfg=LightGrey    ctermbg=NONE
highlight Normal    gui=NONE    guifg=Grey90         guibg=#001111

" ColorColumn
" used for the columns set with 'colorcolumn'.
"
" Conceal
" placeholder characters substituted for concealed text when 'conceallevel' is
" set to 1. See also Ignore, that is used when 'conceallevel' is set to 0.
highlight Conceal cterm=NONE  ctermfg=NONE  ctermbg=NONE
highlight Conceal   gui=NONE    guifg=NONE    guibg=NONE
"
" Cursor
" the character under the cursor
highlight Cursor  guibg=Red
"
" CursorIM
" like Cursor, but used when in IME mode
"
" CursorColumn
" the screen column that the cursor is in when 'cursorcolumn' is set
highlight CursorColumn  cterm=NONE  ctermfg=NONE  ctermbg=DarkGrey
highlight CursorColumn    gui=NONE    guifg=NONE    guibg=Grey30
"
" CursorLine
" the screen line that the cursor is in when 'cursorline' is set
highlight CursorLine  cterm=underline ctermbg=NONE
highlight CursorLine    gui=underline   guibg=NONE
"
" Directory
" directory names (and other special names in listings)
highlight Directory cterm=bold  ctermfg=Blue
highlight Directory   gui=bold    guifg=#4444ff
"
" DiffAdd
" diff mode: Added line
highlight DiffAdd cterm=NONE  ctermfg=Yellow ctermbg=DarkCyan
highlight DiffAdd   gui=NONE    guifg=Yellow   guibg=DarkCyan
"
" DiffChange
" diff mode: Changed line
highlight DiffChange  cterm=NONE  ctermfg=NONE ctermbg=DarkGrey
highlight DiffChange    gui=NONE    guifg=NONE   guibg=DarkCyan
"
" DiffDelete
" diff mode: Deleted line
highlight DiffDelete  cterm=NONE  ctermfg=DarkCyan ctermbg=Cyan
highlight DiffDelete    gui=NONE    guifg=DarkCyan   guibg=Cyan
"
" DiffText
" diff mode: Changed text within a changed line
highlight DiffText  cterm=NONE  ctermfg=DarkGrey ctermbg=Yellow
highlight DiffText    gui=NONE    guifg=Grey90     guibg=Yellow
"
" ErrorMsg
" error messages on the command line
" Keep default
"
" VertSplit
" the column separating vertically split windows
highlight VertSplit cterm=NONE  ctermfg=Yellow  ctermbg=NONE
highlight VertSplit   gui=NONE    guifg=Yellow    guibg=NONE
"
" Folded
" line used for closed folds
highlight Folded  cterm=NONE  ctermfg=DarkGreen ctermbg=NONE
highlight Folded    gui=NONE    guifg=DarkGreen   guibg=NONE
"
" FoldColumn
" 'foldcolumn'
highlight FoldColumn  cterm=NONE  ctermfg=Cyan  ctermbg=DarkGrey
highlight FoldColumn    gui=NONE    guifg=Cyan    guibg=Grey30
"
" SignColumn
" column where signs are displayed
highlight SignColumn  cterm=NONE  ctermfg=Cyan  ctermbg=DarkGrey
highlight SignColumn    gui=NONE    guifg=Cyan    guibg=Grey30
"
" Search
" Last search pattern highlighting (see 'hlsearch'). Also used for highlighting
" the current line in the quickfix window and similar items that need to stand
" out. Here, we keep the context:
highlight clear Search
highlight Search  cterm=reverse gui=reverse
"
" IncSearch
" 'incsearch' highlighting; also used for the text replaced with :s///c
" Keep default
"
" LineNr
" Line number for :number and :# commands, and when 'number' or
" 'relativenumber' option is set.
highlight LineNr  cterm=NONE  ctermfg=DarkCyan  ctermbg=NONE
highlight LineNr    gui=NONE    guifg=DarkCyan    guibg=NONE
"
" CursorLineNr
" Like LineNr when 'cursorline' is set for the cursor line.
highlight CursorLineNr  cterm=NONE  ctermfg=Yellow  ctermbg=NONE
highlight CursorLineNr    gui=NONE    guifg=Yellow    guibg=NONE
"
" MatchParen
" The character under the cursor or just before it, if it is a paired bracket,
" and its match. Here, we keep the context:
highlight clear MatchParen
highlight MatchParen  cterm=reverse gui=reverse
"
" ModeMsg
" 'showmode' message (e.g. -- INSERT --)
highlight ModeMsg cterm=bold  ctermfg=White ctermbg=NONE
highlight ModeMsg   gui=bold    guifg=White   guibg=NONE
"
" MoreMsg
" more-prompt
highlight MoreMsg cterm=NONE  ctermfg=Green ctermbg=NONE
highlight MoreMsg   gui=NONE    guifg=Green   guibg=NONE
"
" Question
" 'hit-enter' prompt and yes/no questions
highlight Question  cterm=bold  ctermfg=Green ctermbg=NONE
highlight Question    gui=bold    guifg=Green   guibg=NONE
"
" WarningMsg
" warning messages
highlight WarningMsg  cterm=bold  ctermfg=DarkRed ctermbg=NONE
highlight WarningMsg    gui=bold    guifg=DarkRed   guibg=NONE
"
" Pmenu
" Popup menu: normal item.
highlight Pmenu ctermfg=DarkCyan  ctermbg=NONE
highlight Pmenu   guifg=DarkCyan    guibg=NONE
"
" PmenuSel
" Popup menu: selected item.
highlight PmenuSel  ctermfg=Yellow ctermbg=DarkGrey
highlight PmenuSel    guifg=Yellow   guibg=Grey30
"
" PmenuSbar
" Popup menu: scrollbar.
highlight PmenuSBar ctermfg=NONE  ctermbg=DarkCyan
highlight PmenuSBar   guifg=NONE    guibg=DarkCyan
"
" PmenuThumb
" Popup menu: Thumb of the scrollbar.
highlight PmenuThumb  ctermfg=NONE  ctermbg=Yellow
highlight PmenuThumb    guifg=NONE    guibg=Yellow
"
" NonText
" '~' and '@' at the end of the window, characters from 'showbreak' and other
" characters that do not really exist in the text (e.g., '>' displayed when a
" double-wide character doesn't fit at the end of the line).
" Keep default
"
" SpecialKey
" Meta and special keys listed with :map, also for text used to show
" unprintable characters in the text, 'listchars'. Generally: text that is
" displayed differently from what it really is.
highlight SpecialKey  cterm=NONE  ctermfg=Blue    ctermbg=NONE
highlight SpecialKey    gui=NONE    guifg=#4444ff   guibg=NONE
"
" SpellBad
" Word that is not recognized by the spellchecker. This will be combined with
" the highlighting used otherwise.
" Keep default
"
" SpellCap
" Word that should start with a capital. This will be combined with the
" highlighting used otherwise.
" Keep default
"
" SpellLocal
" Word that is recognized by the spellchecker as one that is used in another
" region. This will be combined with the highlighting used otherwise.
" Keep default
"
" SpellRare
" Word that is recognized by the spellchecker as one that is hardly ever used.
" This will be combined with the highlighting used otherwise.
" Keep default
"
" StatusLine
" status line of current window
highlight StatusLine  cterm=underline ctermfg=Yellow  ctermbg=NONE
highlight StatusLine    gui=underline   guifg=Yellow    guibg=NONE
"
" StatusLineNC
" status lines of not-current windows. Note: if this is equal to StatusLine
" Vim will use '^^^' in the status line of the current window.
highlight StatusLineNC  cterm=underline ctermfg=DarkCyan  ctermbg=NONE
highlight StatusLineNC    gui=underline   guifg=DarkCyan    guibg=NONE
"
" TabLine
" tab pages line, not active tab page label
highlight TabLine cterm=underline ctermfg=DarkCyan  ctermbg=NONE
highlight TabLine   gui=underline   guifg=DarkCyan    guibg=NONE
"
" TabLineFill
" tab pages line, where there are no labels
highlight TabLineFill cterm=underline ctermfg=DarkCyan  ctermbg=NONE
highlight TabLineFill   gui=underline   guifg=DarkCyan    guibg=NONE
"
" TabLineSel
" tab pages line, active tab page label
highlight TabLineSel  cterm=underline ctermfg=Yellow  ctermbg=NONE
highlight TabLineSel    gui=underline   guifg=Yellow    guibg=NONE
"
" Title
" titles for output from :set all, :autocmd, etc.
" Keep default
"
" Visual
" Visual mode selection
highlight Visual  cterm=NONE  ctermfg=NONE  ctermbg=DarkGrey
highlight Visual    gui=NONE    guifg=NONE    guibg=Grey30
"
" VisualNOS
" Visual mode selection when vim is 'Not Owning the Selection'. Only X11 Gui's
" and xterm-clipboard supports this.
" Keep default
"
" WildMenu
" current match in 'wildmenu' completion
" Keep default

" Now override settings of syncolor.vim
"
" Comment
highlight Comment cterm=NONE  ctermfg=DarkCyan ctermbg=NONE
highlight Comment   gui=NONE    guifg=DarkCyan   guibg=NONE
"
" Constant
highlight Constant  cterm=NONE  ctermfg=Magenta ctermbg=NONE
highlight Constant    gui=NONE    guifg=#ff44ff   guibg=NONE
"
" Special
highlight Special cterm=NONE  ctermfg=Red     ctermbg=NONE
highlight Special   gui=NONE    guifg=#ff4444   guibg=NONE
"
" Identifier
highlight Identifier  cterm=NONE  ctermfg=Cyan  ctermbg=NONE
highlight Identifier    gui=NONE    guifg=Cyan    guibg=NONE
"
" Statement
highlight Statement cterm=NONE  ctermfg=Yellow  ctermbg=NONE
highlight Statement   gui=NONE    guifg=Yellow    guibg=NONE
"
" PreProc
highlight PreProc cterm=NONE  ctermfg=LightBlue ctermbg=NONE
highlight PreProc   gui=NONE    guifg=#4444ff     guibg=NONE
"
" Type
highlight Type  cterm=NONE  ctermfg=LightGreen  ctermbg=NONE
highlight Type    gui=NONE    guifg=#44ff44       guibg=NONE
"
" Underlined
highlight Underlined  cterm=underline ctermfg=LightBlue ctermbg=NONE
highlight Underlined    gui=underline   guifg=#4444ff     guibg=NONE
"
" Ignore
" used when 'conceallevel' is set to 0. See also Conceal,
highlight Ignore  cterm=NONE  ctermfg=Black   ctermbg=NONE
highlight Ignore    gui=NONE    guifg=#001111   guibg=NONE
"
" Error
highlight Error cterm=NONE  ctermfg=White ctermbg=Red
highlight Error   gui=NONE    guifg=White   guibg=Red
"
" Todo
highlight Todo  cterm=NONE  ctermfg=Black ctermbg=Yellow
highlight Todo    gui=NONE    guifg=Black   guibg=Yellow


" Now adjust highlight groups for each TERM if necessary.

if &term=~"linux"
  highlight CursorLine    cterm=NONE  ctermbg=DarkGrey
  highlight StatusLine    cterm=NONE  ctermbg=DarkGrey
  highlight StatusLineNC  cterm=NONE  ctermbg=DarkGrey
  highlight TabLine       cterm=NONE  ctermbg=DarkGrey
  highlight TabLineFill   cterm=NONE  ctermbg=DarkGrey
  highlight TabLineSel    cterm=NONE  ctermbg=DarkGrey
  highlight Underlined    cterm=NONE  ctermbg=DarkGrey

elseif &term=="jfbterm"
  highlight CursorColumn  cterm=underline

  " Maybe is there something to add for Eterm, mlterm, kterm, fbterm and their
  " screen or tmux sessions, but... DIY!
endif

highlight def link  netrwDir      Directory
highlight def link  netrwExe      Type
highlight def link  netrwSymlink  Identifier
" Mark trailing spaces
highlight def link  TrailingSpace Error

" vim: et ts=2 sts=2 sw=2
