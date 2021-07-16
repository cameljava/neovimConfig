call plug#begin('~/.config/nvim/plugged')
" Plugins
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-commentary'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'stsewd/fzf-checkout.vim'
Plug 'moll/vim-node'
Plug 'junegunn/vim-peekaboo'
Plug 'chrisbra/Colorizer'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/playground'
Plug 'voldikss/vim-floaterm'
Plug 'morhetz/gruvbox'
Plug 'preservim/nerdtree'


Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-compe'
Plug 'glepnir/lspsaga.nvim'
call plug#end()

" set runtimepath^=~/.vim runtimepath+=~/.vim/after
" let &packpath=&runtimepath
set nu
set rnu
set hidden
set completeopt=menu,menuone,preview,noselect,noinsert
" set dictionary+=/usr/share/dict/words
" set wildignore+=*/node_modules/*,*/coverage/*
set incsearch
set ignorecase
set smartcase
set ts=2
set sw=2
set clipboard=unnamedplus
set splitbelow
set splitright
set updatetime=2500
" set undodir=~/.vim/undodir
set inccommand=split
set scrolloff=1
set grepprg=rg\ --vimgrep\ --no-heading\ --smart-case
set grepformat=%f:%l:%c:%m,%f:%l:%m


set termguicolors
set bg=dark
" set bg=light
" syntax highlight only to 1K instead of default 3K
set synmaxcol=1000
" THEME stuff
" better vertsplit char- part of ci_dark theme
set fillchars+=vert:│
" let g:ci_dark_enable_bold = 1
colorscheme gruvbox

let mapleader = ","

nnoremap <silent> Q <nop>
nnoremap <leader>n :NERDTreeToggle<CR>

lua require'nvim-treesitter.configs'.setup { highlight = { enable = true } }

augroup highlight_yank
    autocmd!
    autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank({timeout = 40})
augroup END
