set number
set ruler
set history=1000

" Width = 100
set textwidth=100
set colorcolumn=+0
set cursorcolumn

" Search
set incsearch
set hlsearch
set ignorecase
set smartcase

" Tabs
set tabstop=2
set shiftwidth=2
set autoindent
set expandtab
set list

" Wrapping
set wrap
set linebreak

" Saving
nmap <c-s> :w<CR>
vmap <c-s> <Esc><c-s>gv
imap <c-s> <Esc><c-s>

" Train your hjkl movement
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" NERDtree
map \ :NERDTreeToggle<CR>
map \| :NERDTreeFind<CR>

" vim-plug
" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.config/nvim/plugged')

" Make sure you use single quotes

" On-demand loading
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-repeat'
Plug 'catppuccin/vim', { 'as': 'catppuccin', 'branch': 'main'}

" Initialize plugin system
call plug#end()

" HTML tag matching with %
runtime macros/matchit.vim

" ctrl-p: show hidden
let g:ctrlp_show_hidden = 1

set termguicolors
"colorscheme catppuccin_mocha
colorscheme catppuccin_macchiato
"colorscheme catppuccin_frappe
"colorscheme catppuccin_latte
