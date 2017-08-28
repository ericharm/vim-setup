"" load plugins through pathogen
execute pathogen#infect()
filetype plugin on
filetype plugin indent on
set nocompatible


""            "
"" APPEARANCE "
""            "

syntax enable " gimme colors
set t_Co=256 " gimme lots of colors
colo elisex
set list " show trailing spaces
set listchars=trail:·

let g:netrw_list_hide='.*\.swp$,.DS_Store' " hide temporary buffer files in source tree
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git' " don't show vendor files in ctrlp
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


""          "
"" BEHAVIOR "
""          "

set incsearch " snap to matches before I press Enter
set cindent " indent based on braces
set tabstop=4 " show existing tab with 4 spaces width
    " ( this possibly does nothing when shiftwidth and expandtab are set)
set shiftwidth=4 " >> inserts four spaces in normal/visual mode
set expandtab " Tab key inserts four spaces in insert mode
set mouse=a " enable mouse
set backspace=2 " make backspace work like most other apps
set pastetoggle=<F2> " F2 for better clipboard pasting


""              "
"" KEY BINDINGS "
""              "

" Alt+t opens a new tab in the current directory
map <esc>t :tabe<Space>.<Return>
" Alt+h/j/k/l to resize panes
map <esc>h :vertical resize -5<Return>
map <esc>j :resize +5<Return>
map <esc>k :resize -5<Return>
map <esc>l :vertical resize +5<Return>
" Alt+/ to comment current line
map <esc>/ <leader>c<Space>h 
" Alt+Shift+f brings up fuzzy search
map <esc>F :CtrlSF<Space>

" Tab and Shift+Tab move between tabs
nnoremap <Tab> :tabnext<cr>
nnoremap <S-Tab> :tabprev<cr>

" qq as escape alias
map qq <esc>
imap qq <esc>

