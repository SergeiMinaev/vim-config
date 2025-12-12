" Specify a directory for plugins
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" https://github.com/mhinz/vim-startify
" Awesome vim sessions.
" Save new session - :SS <session-name> 
" Save and close existing session - :SC
Plug 'mhinz/vim-startify'
" autosave session before closing VIM (useful when using tmux sessions)
let g:startify_session_persistence = 1

" https://github.com/bling/vim-bufferline
" Super simple vim plugin to show the list of buffers in the command bar.
Plug 'bling/vim-bufferline'

" https://github.com/ap/vim-css-color
" Highlight color codes.
Plug 'ap/vim-css-color'

" https://github.com/junegunn/fzf.vim
" Useful file opener (call it by Ctrl-p).
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" nmap <C-P> :GFiles<CR>
nmap <C-P> :Files<CR>
let $FZF_DEFAULT_COMMAND='find . \( -name node_modules -o -name .git \) -prune -o -print'

" https://github.com/Yggdroot/indentLine
" Displaying thin vertical lines at each indentation level for code indented with spaces.
Plug 'Yggdroot/indentLine'
let g:indentLine_enabled = 1

" https://github.com/ziglang/zig.vim
" Zig lang syntax.
Plug 'ziglang/zig.vim'
let g:zig_fmt_autosave = 0

" https://github.com/gioele/vim-autoswap
" Auto-delete .swp files.
Plug 'gioele/vim-autoswap'
set title titlestring=


" Colorschemes
Plug 'tyrannicaltoucan/vim-deep-space'
Plug 'altercation/vim-colors-solarized'
Plug 'gregsexton/Atom'
Plug 'ajmwagar/vim-deus'
Plug 'chase/focuspoint-vim'
Plug 'jaredgorski/fogbell.vim'
Plug 'cocopon/iceberg.vim'
Plug 'christophermca/meta5'
Plug 'arcticicestudio/nord-vim'
Plug 'mhartington/oceanic-next'
Plug 'rakr/vim-one'
Plug 'fcpg/vim-orbital'
Plug 'sts10/vim-pink-moon'
Plug 'kyoz/purify'
Plug 'AlessandroYorba/Sierra'
Plug 'lifepillar/vim-solarized8'
Plug 'sainnhe/sonokai'
Plug 'liuchengxu/space-vim-dark'
Plug 'jacoborus/tender.vim'
Plug 'rakr/vim-two-firewatch'
Plug 'andreasvc/vim-256noir'
Plug 'challenger-deep-theme/vim'
Plug 'mhinz/vim-janah'
Plug 'srcery-colors/srcery-vim'
Plug 'morhetz/gruvbox'
Plug 'hardselius/warlock'
Plug 'romainl/Apprentice'
Plug 'caksoylar/vim-mysticaltutor'
Plug 'vim-scripts/darkspectrum'
Plug 'doums/darcula'
Plug 'SergeiMinaev/calm-dark.vim'

" Initialize plugin system
call plug#end()

colorscheme calm-dark
set nocompatible
set wrap
set linebreak
set t_Co=256
set nu
set background=dark
set termguicolors
set ruler
set hlsearch
set nofoldenable
"set foldmethod=indent
set foldmethod=indent
set foldlevel=1
"set foldclose=all
"set foldnestmax=1
set foldcolumn=0
"noremap za zA
noremap fo zA
set cursorline
set fileformat=unix
set scrolloff=10
set colorcolumn=120
syntax on
filetype on
filetype plugin on
autocmd BufRead *.py nmap <F9> :!python %<CR>
autocmd BufRead,BufNewFile *.tpl set filetype=html
autocmd BufNewFile,BufRead *.ts setlocal filetype=minjs
autocmd BufNewFile,BufRead *.js setlocal filetype=minjs
autocmd BufNewFile,BufRead *.vue setlocal filetype=minjs
autocmd BufNewFile,BufRead *.py setlocal filetype=python
autocmd BufNewFile,BufRead *.css setlocal filetype=mincss
autocmd BufNewFile,BufRead *.lcss setlocal filetype=mincss
autocmd BufNewFile,BufRead *.scss setlocal filetype=mincss
autocmd BufNewFile,BufRead *.rs setlocal filetype=minrust
autocmd BufNewFile,BufRead *.vim setlocal filetype=vim


let b:showSpaces = 1
set tabstop=4 shiftwidth=4
set expandtab
set smarttab
set softtabstop=2
set autoindent
"autocmd FileType javascript setlocal shiftwidth=4 tabstop=4
"autocmd FileType html setlocal shiftwidth=4 tabstop=4
"autocmd FileType python setlocal shiftwidth=4 tabstop=4

autocmd BufWritePre *.py normal m`:%s/\s\+$//e ``
autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
nmap ,t :tabnew .<CR>

" Speed up vim a bit
set lazyredraw
set ttyfast
set synmaxcol=300
set nocursorline

set statusline=%F%m%r%h%w
set laststatus=2

" buffer navigation
map gn :bn<cr>
map gp :bp<cr>
map gd :bd<cr>

nnoremap <C-n> <C-w><C-w>
nnoremap <buffer> <F9> :exec '!python' shellescape(@%, 1)<cr>

" fix backspace in ssh sessions
:set backspace=indent,eol,start

" Prettify XML. Select XML string, press `y`, then press F12.
map <F12> :'<,'>!xmllint --format -

command! DeleteTrailingSpaces %s/\s\+$//e

" Handle commands in cyrillic ЙЦУКЕН keyboard layout. Remove it if not needed.
map Жцй :wq
map Жц :w
map Жй :q
map . /
map ё `
map й q
map ц w
map у e
map к r
map е t
map н y
map г u
map ш i
map щ o
map з p
map х [
map ъ ]
map ф a
map ы s
map в d
map а f
map п g
map р h
map о j
map л k
map д l
map ж ;
map э '
map я z
map ч x
map с c
map м v
map и b
map т n
map ь m
map б ,
map ю .
map Ё ~
map Й Q
map Ц W
map У E
map К R
map Е T
map Н Y
map Г U
map Ш I
map Щ O
map З P
map Х {
map Ъ }
map Ф A
map Ы S
map В D
map А F
map П G
map Р H
map О J
map Л K
map Д L
map Ж :
map Э "
map Я Z
map Ч X
map С C
map М V
map И B
map Т N
map Ь M
map Б <
map Ю >

" Per-project vimrc support.
if filereadable(".vimrc")
    source .vimrc
endif

set viminfofile=~/.viminfo
