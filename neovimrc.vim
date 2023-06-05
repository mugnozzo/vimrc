" Name:					neovimrc.vim
" Author:       Alek Mugnozzo
" E-mail:       info@mugnozzo.net
" Website:      mugnozzo.net
" License:      GNU GPLv3.0
" Hosted at:    https://github.com/mugnozzo/vimrc

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

" RESIZING
nnoremap <leader>zz <C-W>=
nnoremap <leader>zZ :resize \| :vertical resize<CR>
nnoremap <leader>zj :resize +5<CR>
nnoremap <leader>zk :resize -5<CR>
nnoremap <leader>zl :vertical resize +5<CR>
nnoremap <leader>zh :vertical resize -5<CR>

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
autocmd BufNew,BufNewFile,BufRead *.phtml :set filetype=html
autocmd BufWritePost *.scss !sassc %:p %:p:r.css > /tmp/tmp_sass_output.txt

" APPEARANCE
colorscheme desert
highlight Normal ctermbg=233 guibg=#000000
highlight LineNr cterm=bold ctermfg=226
highlight LineNrAbove cterm=none ctermfg=227
highlight LineNrBelow cterm=none ctermfg=227
highlight NonText ctermbg=234

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
Plug 'tpope/vim-fugitive'
call plug#end()
