"================
" Basic Settings
"================

" Setting about display.
set number
syntax on

" Setting about search.
set ignorecase
set hlsearch
set incsearch

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


"=============
" Key Mapping
"=============

" Key map to make auto-pair.
inoremap ' ''<ESC>i
inoremap " ""<ESC>i
inoremap ( ()<ESC>i
inoremap [ []<ESC>i
inoremap { {}<ESC>i

" Set %% in ex like <%:h<Tab>,N>.
cnoremap <expr> %% getcmdtype( ) == ':' ? expand('%:h').'/' : '%%'


"==================
" vim-plug manager
"==================

" Begin call vim-plug function.
call plug#begin('~/.vim/plugged')

" Plug to auto Complete code.
Plug 'Valloric/YouCompleteMe'

" Plug to easily comment code with combine key <gcc,N> or <gc,V>.
Plug 'tpope/vim-commentary'

" Plug to find file etc faset with ex <:Files,N> and <:Buffers,N>.
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" Additional key map.
nmap <C-p> :Files<CR>
nmap <C-e> :Buffers<CR>

" Plug to add or alter delimeter in visual mode.
tpope/vim-surround

" End call vim-plug function.
call plug#end()
