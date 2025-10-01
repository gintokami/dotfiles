" ln -s ~/.dotfiles/.vim/.vimrc ~/.vimrc

set nocompatible

if has('mouse')
  set mouse=a
endif

set lines=999 columns=999
syntax on
set ruler
set number
set hidden
set guioptions-=m
set guioptions-=T
set backspace=indent,eol,start
set nojoinspaces
set showcmd
set wildmenu
set hlsearch
set incsearch
set ignorecase
set smartcase
set nowrap
set history=1000
set undolevels=1000
set nostartofline
set confirm
set shell=bash
autocmd VimEnter * set autochdir
set clipboard=unnamed,unnamedplus
set formatoptions=l
set lbr 
colorscheme desert

set encoding=utf-8
" set list
" set listchars=tab:▸\ ,eol:◂

" set colorcolumn=80
" highlight ColorColumn ctermbg=magenta
" call matchadd('ColorColumn', '\%79v', 100)

map <Space> <Leader>
"let mapleader="," 

inoremap jj <Esc>
inoremap fj <Esc>
inoremap jf <Esc>

nnoremap Y y$

nnoremap j gj
nnoremap k gk

nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>

nnoremap Y y$

autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \ exe "normal g`\"" |
    \ endif

set shiftround
set autoindent
set copyindent
set smarttab
set expandtab
setlocal tabstop=2
setlocal shiftwidth=2
setlocal softtabstop=2

autocmd FileType txt setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType html setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType xml setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType css setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType python setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType ruby setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd BufRead,BufNewFile *.erb setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd BufRead,BufNewFile *.scss setlocal shiftwidth=2 tabstop=2 softtabstop=2

set pastetoggle=<F11>
set nobackup
set noswapfile
" set backupdir=~/.vim/backup//
" set directory=~/.vim/swap//

" Toggle spell checking on and off with `,s`
nmap <silent> <leader>s :set spell!<CR>

" Source the vimrc file after saving it
if has("autocmd")
  autocmd bufwritepost .vimrc source $MYVIMRC
endif

" pressing ,(leader)+v opens .vimrc 
" nmap <leader>v :e $MYVIMRC<CR>

" let g:syntastic_<filetype>_checkers=['<checker-name>']
" let g:syntastic_python_checkers=['pylint']

" Some filetypes, like PHP, have style checkers as well as syntax checkers. 
" These can be chained together like this:
" let g:syntastic_php_checkers=['php', 'phpcs', 'phpmd']
" This is telling syntastic to run the php checker first, and if no errors are
" found, run phpcs, and then phpmd.

" let g:syntastic_html_checkers=['tidy', 'jshint']
" let g:syntastic_css_checkers=['csslint']
" let g:syntastic_javascript_checkers=['eslint']

filetype plugin indent on

""""
" cd /
" set wildignore+=
" set laststatus=4
" set cmdheight=2
" let b:did_indent = 1
" let loaded_matchparen = 1
