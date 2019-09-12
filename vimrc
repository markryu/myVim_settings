set nocompatible              " be iMproved, required
filetype off                  " required
set encoding=utf-8

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'tmhedberg/SimpylFold'

Plugin 'vim-scripts/indentpython.vim'

Bundle 'Valloric/YouCompleteMe'

Plugin 'vim-syntastic/syntastic'

Plugin 'scrooloose/nerdtree'

Plugin 'jistr/vim-nerdtree-tabs'

Plugin 'kien/ctrlp.vim'

Plugin 'tpope/vim-fugitive'

Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

Plugin 'prettier/vim-prettier'

Plugin 'morhetz/gruvbox'

Plugin 'mattn/emmet-vim'



call vundle#end()            " required
filetype plugin indent on    " required


"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

" To see docstrings in folded code
let g:SimpylFold_docstring_preview=1

" Spacing
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |

au BufNewFile,BufRead *.js,*.html,*.css
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 |

" flag unnecessary whitespace
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" to call bg schemes
nnoremap <F5> :call togglebg#map() <cr>

" invoke terminal
nnoremap <c-d> :term <cr>

" prettify
nnoremap <F3> :PrettierAsync<cr>

" colorscheme
set background=dark    " Setting dark mode
colorscheme gruvbox

" Nerdtree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

" <t-k> 
nnoremap <c-k> :tabnext <cr>
nnoremap <c-l> :tabedit <cr>
nnoremap <c-j> :tabprevious <cr>


let g:user_emmet_leader_key='<C-J>'
