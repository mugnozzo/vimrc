syntax on 

set ignorecase
set smartcase
set incsearch
set hlsearch
set autoindent
set cindent
set number
set relativenumber
set hidden

" INDENTATION
set tabstop=2
set softtabstop=0
set noexpandtab
set shiftwidth=2
syntax on

" MAPLEADER
let mapleader=" "

" NAVIGATION
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>r :wincmd r<CR>
nnoremap <leader>R :wincmd R<CR>
nnoremap <leader>bn :bn<CR>
nnoremap <leader>bp :bp<CR>
nnoremap <leader>bb :buffer 
nnoremap <leader>bl :buffers<CR>
nnoremap <leader>m `

" SELECTING/COPYING/PASTING
nnoremap <leader>a ggVG
nnoremap <leader>ya ggVG"*yggVG"+y
nnoremap <leader>p "+p
nnoremap <leader>P "*p

" MISC
map <leader>n :noh<CR>
map <leader>N :set relativenumber!<CR>

