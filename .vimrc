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
