syntax on
filetype on
set encoding=utf-8
set termguicolors
set nobackup
set noswapfile
set nowritebackup
set nocompatible
set number
set relativenumber
set belloff=all
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set smartindent
set autoindent
set hidden
set hlsearch
set ignorecase
set smartcase
set background=dark
set t_Co=256
set cmdheight=1
set clipboard=unnamedplus
set updatetime=300
set shortmess+=c
set signcolumn=number

call plug#begin()
	Plug 'ghifarit53/tokyonight-vim'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'preservim/nerdtree'
	Plug 'Xuyuanp/nerdtree-git-plugin'
	Plug 'ryanoasis/vim-devicons'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'

call plug#end()

let g:tokyonight_style = 'night' 
let g:tokyonight_enable_italic = 1

colorscheme tokyonight

noremap q: <nop>
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>

inoremap <Up> <nop>
inoremap <Down> <nop>
inoremap <Left> <nop>
inoremap <Right> <nop>

" fzf 

nnoremap <silent> sf :Files<CR>

" Nerdtree
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
nnoremap <C-t> :NERDTreeToggle<CR>

" Coc
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ CheckBackspace() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

" Formatting selected code.
xmap <silent>ff  <Plug>(coc-format-selected)
nmap <silent>ff  <Plug>(coc-format-selected)
