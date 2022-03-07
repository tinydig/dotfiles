:set number
:set autoindent
:set mouse=a

:set tabstop=4
:set softtabstop=4
:set expandtab
:set shiftwidth=4

call plug#begin()

Plug 'EdenEast/nightfox.nvim'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-fugitive'
Plug 'cohama/lexima.vim'

Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'

Plug 'nvim-telescope/telescope.nvim'
Plug 'preservim/nerdtree'

" Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

Plug 'dyng/ctrlsf.vim'

call plug#end()

if (has("termguicolors"))
 set termguicolors
endif

syntax enable
colorscheme nightfox

set splitbelow splitright

" Navigate by Ctrl + hjkl
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l


