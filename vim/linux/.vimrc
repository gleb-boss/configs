set nocompatible
filetype on
filetype plugin on
filetype indent on

let g:netrw_liststyle = 3
set wildmenu " options to completitions
set number
syntax on
set relativenumber
set cursorline
set cursorlineopt=number
set background=dark

colorscheme gruvbox
" ------------- HighLights for viffuf
highlight ProgressNew   ctermfg=cyan guifg=#00ffff
highlight ProgressNotIntr ctermfg=red  guifg=#ff0000
highlight ProgressDone ctermfg=green  guifg=#00ff00
highlight ProgressInProgress ctermfg=magenta guifg=#00ff00
" ------------- ~~~

set hlsearch
autocmd FileType python setlocal expandtab shiftwidth=4 tabstop=4
autocmd FileType json setlocal expandtab shiftwidth=2 tabstop=2
autocmd BufRead,BufNewFile *.bambda set syntax=java
autocmd BufRead,BufNewFile *.http set ft=http
set spr "split new window right
imap jj <ESC>
" copy to systemclipboard
nmap <F2> :silent call system('xclip -sel clipboard', @0)<CR>

"STATUSLINE
set laststatus=2

set statusline=
set statusline+=\ %F
set statusline+=%#ReadOnly#
set statusline+=\ %r
set statusline+=%m
set statusline+=%=
set statusline+=%#Fileformat#
set statusline+=\ %y
set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
set statusline+=\ [%{&fileformat}\]
set statusline+=%#Position#
set statusline+=\ [%l/%L]
