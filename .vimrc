set termguicolors
filetype plugin on
filetype plugin indent on
set nocompatible

" Plugins
call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-commentary'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'schickling/vim-bufonly'
Plug 'dyng/ctrlsf.vim'
Plug 'tpope/vim-fugitive'
Plug 'vim-syntastic/syntastic'
Plug 'sheerun/vim-polyglot'
Plug 'ap/vim-css-color'
Plug 'mattn/emmet-vim'
Plug 'easymotion/vim-easymotion'
Plug 'jelera/vim-javascript-syntax'
Plug 'posva/vim-vue'
Plug 'Shougo/deoplete.nvim'
Plug 'ervandew/supertab'
call plug#end()

""            "
"" APPEARANCE "
""            "

syntax on
syntax enable " gimme colors
set ignorecase
set smartcase
"set t_Co=256 " gimme lots of colors
colo Dusk
"colo elisex
set list " show trailing spaces
" highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
" match ExtraWhitespace /\s\+$/
set listchars=tab:>-
set cursorline
highlight CursorLine guibg=black term=bold cterm=bold

let g:netrw_list_hide='.*\.swp$,.DS_Store' " hide temporary buffer files in source tree
let g:ctrlp_custom_ignore = 'node_modules\|vendor\|DS_Store\|git\|bower_components\|packs' " don't show vendor files in ctrlp
let g:netrw_banner=0 " hide netrw banner
set number " show line numbers

"" Powerline
set laststatus=2
let g:airline_powerline_fonts = 1
let g:Powerline_symbols = 'fancy'
set fillchars+=stl:\ ,stlnc:\
set guifont=PowerlineSymbols

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"

"" Powerline-style tabline with no buffers
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#show_tabs = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#show_splits = 0


""          "
"" BEHAVIOR "
""          "

set incsearch " snap to matches before I press Enter
set cindent " indent based on braces
set tabstop=2 " show existing tab with 2 spaces width
set shiftwidth=2 " >> inserts two spaces in normal/visual mode
set expandtab " Tab key inserts two spaces in insert mode
set mouse=a " enable mouse
set backspace=2 " make backspace work like most other apps
set pastetoggle=<F2> " F2 for better clipboard pasting
set clipboard=unnamed " default register copies/pastes to/from Mac clipboard

set foldmethod=indent   "fold based on indent
set foldnestmax=4      "deepest fold is 10 levels
set nofoldenable        "dont fold by default

let g:syntastic_javascript_checkers = ['standard']
let g:syntastic_cpp_compiler_options = "-std=c++11"
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_check_on_open = 1


""              "
"" KEY BINDINGS "
""              "

" Space opens a new tab in the current directory
nnoremap <Space> :tabe<Space>.<Return>
" Alt+h/j/k/l to resize panes
nnoremap <C-h> :vertical resize -5<Return>
nnoremap <C-j> :resize +5<Return>
nnoremap <C-k> :resize -5<Return>
nnoremap <C-l> :vertical resize +5<Return>
" Alt+/ to comment current line - must be recursive because of plugin
nmap <C-_> gcc

" comma+f brings up fuzzy search
nnoremap ,f :CtrlSF<Space>
" comma+s brings up search and replace because I always forget how
nnoremap ,s :%s/x/y/gc
" Use black hole registers to delete/change without copying to default register
nnoremap ,d "_d
nnoremap ,c "_c
" Turn off syntax checker
nnoremap ,j :SyntasticToggleMode<cr>

" Tab and Shift+Tab move between tabs
nnoremap <Tab> :tabnext<cr>
nnoremap <S-Tab> :tabprev<cr>

" For browsing commits, from vim-unimpaired
nnoremap ]q :cnext<cr>
nnoremap [q :cprev<cr>

" qq as escape alias
vnoremap qq v
inoremap qq <esc>

" when you move a cursor down it will go to the
" next immediate line even if word wrap is on
nnoremap j gj
nnoremap k gk

" change capitalization of word you just typed with alt+`
inoremap <C-`> <esc>b~e
