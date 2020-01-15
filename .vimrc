" Specify a directory for plugins
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'othree/html5.vim'
let g:html5_event_handler_attributes_complete = 0
let g:html5_rdfa_attributes_complete = 0
let g:html5_microdata_attributes_complete = 0
let g:html5_aria_attributes_complete = 0

Plug 'jelera/vim-javascript-syntax'

" Vue.js syntax
Plug 'othree/javascript-libraries-syntax.vim'
let g:used_javascript_libs = 'vue'

Plug 'posva/vim-vue'
let g:vue_pre_processors = ['scss', 'typescript']
" Available pre-processors are: coffee, haml, handlebars, less, pug, sass, scss, slm, stylus, typescript

" Awesome vim sessions ( https://github.com/mhinz/vim-startify )
" Save new session - :SS <session-name> 
" Save and close existing session - :SC
Plug 'mhinz/vim-startify'

Plug 'bling/vim-bufferline'

" Highlight color codes
Plug 'ap/vim-css-color'

" Useful file opener (call it by Ctrl-p)
Plug 'ctrlpvim/ctrlp.vim'
set wildignore+=*/tmp*/,*/node_modules/*,_site,*/__pycache__/,*/venv/*,*/target/*,*/.vim$,\~$,*/.log

" Vertical indent line
Plug 'Yggdroot/indentLine'
let g:indentLine_enabled = 1

" Zig lang syntax
Plug 'ziglang/zig.vim'
let g:zig_fmt_autosave = 0

" Initialize plugin system
call plug#end()


set nocompatible
set foldcolumn=1
set wrap
set linebreak
set t_Co=256
set nu
set background=dark
set ruler
set hlsearch
set foldmethod=expr
set nofoldenable
set cursorline
set fileformat=unix
set scrolloff=10
syntax on
filetype on
filetype plugin on
autocmd BufRead *.py nmap <F9> :!python %<CR>
autocmd BufRead,BufNewFile *.tpl set filetype=html
colorscheme apprentice
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
set synmaxcol=200
set nocursorline

set statusline=%F%m%r%h%w
set laststatus=2

" buffer navigation
map gn :bn<cr>
map gp :bp<cr>
map gd :bd<cr>

nnoremap <C-n> <C-w><C-w>
nnoremap <buffer> <F9> :exec '!python' shellescape(@%, 1)<cr>


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
