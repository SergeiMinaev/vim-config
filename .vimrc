" Specify a directory for plugins
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Awesome vim sessions ( https://github.com/mhinz/vim-startify )
" Save new session - :SS <session-name> 
" Save and close existing session - :SC
Plug 'mhinz/vim-startify'
" autosave session before closing VIM (useful when using tmux sessions)
let g:startify_session_persistence = 1

Plug 'bling/vim-bufferline'

" Default SCSS syntax doesn't support nested selectors
Plug 'cakebaker/scss-syntax.vim'

" Highlight color codes
Plug 'ap/vim-css-color'

" Useful file opener (call it by Ctrl-p)
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" nmap <C-P> :GFiles<CR>
nmap <C-P> :Files<CR>
let $FZF_DEFAULT_COMMAND='find . \( -name node_modules -o -name .git \) -prune -o -print'

" Vertical indent line
Plug 'Yggdroot/indentLine'
let g:indentLine_enabled = 1

" Zig lang syntax
Plug 'ziglang/zig.vim'
let g:zig_fmt_autosave = 0

" Auto-delete .swp files
Plug 'gioele/vim-autoswap'
set title titlestring=

Plug 'vim-scripts/nginx.vim'
au BufRead,BufNewFile /etc/nginx/*,/usr/local/nginx/conf/* if &ft == '' | setfiletype nginx | endif


" Plug 'vim-python/python-syntax'
" let g:python_highlight_func_calls = 0
" some = {
" }
" instead of
" some = {
"         }
let g:pyindent_open_paren = '0'
let g:pyindent_nested_paren = '0'

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

function! MyHighlights() abort
  " Colors of matching brackets in 'apprentice' colorscheme
  " are too low. Make them more visible.
  highlight MatchParen cterm=bold ctermfg=235 ctermbg=253
endfunction

augroup MyColors
    autocmd!
    autocmd ColorScheme * call MyHighlights()
augroup END
colorscheme calm-dark

set nocompatible
set foldcolumn=1
set wrap
set linebreak
set t_Co=256
set nu
set background=dark
set termguicolors
set ruler
set hlsearch
set foldmethod=expr
set nofoldenable
set cursorline
set fileformat=unix
set scrolloff=10
set colorcolumn=120
syntax on
filetype on
filetype plugin on
autocmd BufRead *.py nmap <F9> :!python %<CR>
autocmd BufRead,BufNewFile *.tpl set filetype=html
autocmd BufNewFile,BufRead *.ts setlocal filetype=typescript
autocmd BufNewFile,BufRead *.js setlocal filetype=javascript
autocmd BufNewFile,BufRead *.py setlocal filetype=python
autocmd BufNewFile,BufRead *.scss setlocal filetype=scss
autocmd BufNewFile,BufRead *.lcss setlocal filetype=css
autocmd BufNewFile,BufRead *.vue setlocal filetype=javascript

let b:showSpaces = 1
set tabstop=2 shiftwidth=2
set expandtab
set smarttab
set softtabstop=2
set autoindent
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
autocmd FileType html setlocal shiftwidth=2 tabstop=2
autocmd FileType python setlocal shiftwidth=4 tabstop=4

let python_highlight_all = 1
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

" Handle commands in russian ЙЦУКЕН keyboard layout. Remove it if not needed.
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
