"Set magic on
set magic
syn on

"More informative statusbar
:set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]

"Turn backup off
set nobackup
set nowb
set noswapfile

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smarttab

set more                      " use more prompt
set autoread                  " watch for file changes
set noautowrite               " don't automagically write on :next
set showmode
set showcmd
set nocompatible              " vim, not vi
set cursorline
set showmatch
set list
set listchars=tab:>.

call pathogen#infect()
set foldmethod=marker

filetype on                   " Enable filetype detection
filetype indent on            " Enable filetype-specific indenting
filetype plugin on            " Enable filetype-specific plugins
compiler ruby                 " Enable compiler support for ruby

colorscheme xoria256

"highlight Cursor guifg=Black guibg=Red

"python 
autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class 
let g:pydiction_location = "~/.vim/after/ftplugin/complete-dict"

"ruby
autocmd BufRead *.rb set tabstop=2 shiftwidth=2 softtabstop=2 ai expandtab smarttab 
let g:rubycomplete_rails=1

"php specific
autocmd FileType php let php_sql_query=1
autocmd FileType php let php_htmlInStrings=1
autocmd FileType php let php_noShortTags=1
"autocmd FileType php let php_folding=1

" Settings for taglist.vim
let Tlist_Ctags_Cmd = "/opt/local/bin/ctags"
let Tlist_Use_Right_Window=1
let Tlist_Auto_Open=0
let Tlist_Enable_Fold_Column=0
let Tlist_Compact_Format=0
let Tlist_Exit_OnlyWindow=1
let Tlist_File_Fold_Auto_Close = 1
let Tlist_WinWidth = 28
map <F5> :!/usr/bin/ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
map <C-esc> :TlistToggle<CR>
map <S-esc> :NERDTreeToggle<CR>
map <C-t> :CommandT<CR>
