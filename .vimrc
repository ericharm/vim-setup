"" load plugins through pathogen
execute pathogen#infect()
filetype plugin on
filetype plugin indent on

"" no need for vi compatibility
set nocompatible

set t_Co=256

"" get some colors
syntax enable
"colo material
colo elisex

set ruler
set list
set listchars=trail:·

" Hide temporary buffer files in source tree
let g:netrw_list_hide='.*\.swp$,.DS_Store'
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

" Powerline
set laststatus=2
let g:airline_powerline_fonts = 1
let g:Powerline_symbols = 'fancy'
set fillchars+=stl:\ ,stlnc:\
set guifont=PowerlineSymbols

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:airline_symbols.space = "\ua0"
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 0
"let g:airline#extensions#tabline#show_splits = 0
let g:airline#extensions#tabline#show_tabs = 1
let g:airline#extensions#tabline#fnamemod = ':t'

" Show line numbers
set number

" Searching
:set incsearch
":set hlsearch

" Indenting
set cindent
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

" Method folding
setlocal foldmethod=indent

" Mouse interaction is enabled by default
set mouse=a

"" Normal Mode key bindings
" Alt+t opens a new tab in the current directory
map <esc>t :tabe<Space>.<Return>
" Alt+h to pull a pane to the left
map <esc>h :vertical resize -5<Return>
" Alt+l to push a pane to the right
map <esc>j :resize +5<Return>
" Alt+j to push a pane up
map <esc>k :resize -5<Return>
" Alt+k to push a pane up
map <esc>l :vertical resize +5<Return>
" Nerd commenter
map <esc>/ <leader>c<Space>h 
" Alt+Shift+f brings up fuzzy search
map <esc>F :CtrlSF<Space>

nnoremap <Tab> :tabnext<cr>
nnoremap <S-Tab> :tabprev<cr>

" Map 'qq' to escape key
map qq <esc>
imap qq <esc>

set pastetoggle=<F2>

