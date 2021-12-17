"================
"
" Basic Settings
"
"================

" Setting about display.
set number
syntax on

" Setting about search.
set ignorecase
set hlsearch
set incsearch
"" Setting no-highlight-search with <C-l>.
nnoremap<silent> <C-l> :<C-u>nohlsearch<CR><C-l>


" Setting about tab.
set expandtab
set shiftwidth=4
set tabstop=4

" Setting about indent.
set autoindent
set smartindent

" Setting about encode.
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1


"==============
"
" Key Mapping
"
"==============

" Key map to make auto-pair.
inoremap ' ''<ESC>i
inoremap " ""<ESC>i
inoremap ( ()<ESC>i
inoremap [ []<ESC>i
inoremap { {}<ESC>i

" Easy yank and paste.
vnoremap <leader>y "+y
nnoremap <leader>p "*p

" Make system paste Ctrl-v in insert mode more normally. 
:set pastetoggle=<f5>

" Set %% in ex like <%:h<Tab>,N>.
cnoremap <expr> %% getcmdtype( ) == ':' ? expand('%:h').'/' : '%%'


"===================
"
" vim-plug manager
"
"===================

" Begin call vim-plug function.
call plug#begin('~/.vim/plugged')

" Plug to auto Complete code.
" Plug 'Valloric/YouCompleteMe'

" Plug to easily comment code with combine key <gcc,N> or <gc,V>.
Plug 'tpope/vim-commentary'

" Plug to find file etc faset with ex <:Files,N> and <:Buffers,N>.
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
"" Usage & Additional key map.
nnoremap <leader>cp :Files<CR>
nnoremap <leader>cb :Buffers<CR>

" Plug to simulate a file system explorer.
Plug 'preservim/nerdtree'
"" Usage & Additional key map.
nnoremap <leader>ce :NERDTree<CR>

" Plug to add or alter delimeter in visual mode.
Plug 'tpope/vim-surround'

" Plug to autocomplete python
" Plug 'davidhalter/jedi-vim'

" status-line format and color scheme
Plug 'itchyny/lightline.vim'
set laststatus=2
set noshowmode

" End call vim-plug function.
call plug#end()
