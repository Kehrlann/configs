set number
set history=1000

" Search
set incsearch
set hlsearch
set ignorecase
set smartcase

" Tabs
set tabstop=2
set shiftwidth=2
set expandtab
set autoindent

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
map <c-n> :NERDTreeToggle<CR>

" vim-plug
" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" On-demand loading
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround'
Plug 'ctrlpvim/ctrlp.vim'

" Initialize plugin system
call plug#end()
