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

" FOLDING
set foldenable
set foldmethod=indent
set foldlevel=99

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

" TELESCOPE
map <leader>tt :Telescope<CR>
map <leader>tb :Telescope buffers<CR>
map <leader>tf :Telescope find_files<CR>
map <leader>tg :Telescope live_grep<CR>
map <leader>tr :Telescope registers<CR>

" FILETYPES
autocmd BufNew,BufNewFile,BufRead *.html.twig :set filetype=html

" MISC
map <leader>n :noh<CR>
map <leader>N :set relativenumber!<CR>

" PLUGINS
call plug#begin()
Plug 'BurntSushi/ripgrep'
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'sharkdp/fd'
Plug 'preservim/nerdtree'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'neomake/neomake'
call plug#end()
