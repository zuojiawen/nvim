" To use the configration file, you need install the plugin managment
" vim-plug.
" The plugin coc.nvim need nodejs specifed version

" Make the windows become more clear and beautiful. 
set number
set cursorline
set wrap
" set background=dark
" Always display a status line (it gets hidden sometimes otherwise).
" set laststatus=2

" To make nvim more easy to use
" Edit key maping
let mapleader = " "
noremap ; :
noremap J 5j
noremap K 5k
inoremap jk <Esc>
noremap L $
noremap H 0
noremap erc :e $MYVIMRC 

" Run a script 
noremap rs :w<CR>:! python3 % <CR>



" split and resize
map sl ;set splitright<CR>:vsplit<CR>
map sh ;set nosplitright<CR>:vsplit<CR>
map sk ;set nosplitbelow<CR>:split<CR>
map sj ;set splitbelow<CR>:split<CR>
map <LEADER>l <C-w>l
map <LEADER>h <C-w>h
map <LEADER>k <C-w>k
map <LEADER>j <C-w>j
noremap <up> :res +5<CR>
noremap <down> :res -5<CR>
noremap <left> :vertical resize-5<CR>
noremap <right> :vertical resize+5<CR>


" Tab management
map tn :tabe<CR>
map th :-tabnext<CR>
map tl :+tabnext<CR>



"Search setting
set ignorecase
set smartcase
set hlsearch
set incsearch
noremap - Nzz
noremap = nzz
noremap <LEADER><CR> :nohlsearch<CR>


" Use the key Tab to show the option.
set wildmenu
" Show last command in the status line.
" set showcmd



" some option
set nocompatible
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on
set mouse=a
set clipboard=unnamed
set foldmethod=indent
set laststatus=2
" set hidden 
set autochdir
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif




call plug#begin('~/.config/nvim/plugged')
  Plug 'vim-scripts/ScrollColors'
  Plug 'flazz/vim-colorschemes'
  Plug 'connorholyday/vim-snazzy'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'preservim/nerdtree'
  Plug 'easymotion/vim-easymotion'
  Plug 'neoclide/coc.nvim',{'branch':'release'}
  Plug 'jiangmiao/auto-pairs'
call plug#end()




" ===
" ===nerdtree
" ===
map tt :NERDTreeToggle<CR>



" ===
" ===coc.nvim
" ===
let g:coc_global_extensions = ['coc-python', 'coc-vimlsp', 'coc-json', 'coc-marketplace']
" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> <LEADER>- <Plug>(coc-diagnostic-prev)
nmap <silent> <LEADER>= <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)



"===
" ===vim-colorschemes plug
" ===
colorscheme smyck                     "colorsheme can browsed by command SCORLL
syntax off
