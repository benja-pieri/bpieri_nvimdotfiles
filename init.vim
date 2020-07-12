" ======= plugins config (vim-plug) =======
call plug#begin()

"status line for nvim
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"a collection of language packs for Vim.
Plug 'sheerun/vim-polyglot' 

"fuzzy search
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } "
Plug 'junegunn/fzf.vim' 

"syntax checking and semantic errors
Plug 'w0rp/ale' 

"autopair
Plug 'cohama/lexima.vim'

"colorscheme for vim
Plug 'morhetz/gruvbox'

"coc extension
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"fugitive is the premier Vim plugin for Git
Plug 'tpope/vim-fugitive'

"icons for vim
Plug 'ryanoasis/vim-devicons'

"nerd Tree
Plug 'preservim/nerdtree'

"git plug for Nerd Tree
Plug 'Xuyuanp/nerdtree-git-plugin'

call plug#end()


" ======= airline settings =======

"airline settings lines
let g:airline_solarized_bg='dark'
let g:airline_powerline_fonts = 1
set guifont=hack_regular:h12

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#right_alt_sep = ''



" ======= nerdtree settings =======

"automatically open nerdtree
autocmd vimenter * NERDTree

"close vim when only nerdtree is open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"shortcut to open nerdtree
map <C-n> :NERDTreeToggle<CR>


" ======= gruvbox settings =======
colorscheme gruvbox
set background=dark


" ======= coc settings =======

"Make <tab> used for trigger completion, completion confirm, snippet expand and jump like VSCode.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
let g:coc_snippet_next = '<tab>'

" ======= general settings =======
let mapleader="\<space>" 
set rnu
set nu
set inccommand=split
syntax on
set hidden
set mouse=a
set showmatch
set smartindent
set tabstop=4 softtabstop=4
set smartcase
set shiftwidth=4
set undodir=~/.config/nvim/undodir
set undofile
set incsearch
set expandtab
set noswapfile
set encoding=UTF-8
set noshowmode
set showtabline=2
"remap pgup and pgdn to switch between the open buffers
nnoremap <PageUp>   :bprevious<CR>
nnoremap <PageDown> :bnext<CR>
