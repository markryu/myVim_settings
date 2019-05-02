" open terminal
noremap <C-d> :term<cr>

" for saving folds when closing and opening
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview

" nerdtree autoopen
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" nerdtree toggle
map <C-n> :NERDTreeToggle<CR>

" splits
set splitbelow
set splitright

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

" pep8 spacing
au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

"utf-8 support
set encoding=utf-8


" <gt> for changing tabs
" :tabedit filename for opening new file in a new tab
" :tabn :tabp
" :tabonly for closing all except this one
" :mksession header-files-work.vim to save session
" :vim -S header-files-work.vim then :source header-files-work.vim
" to save :mks!
" :5,16fo to fold the code
" :zo to unfold and zc to close the fold, 
" use za to toggle
" use i or o when opening a new file for types of split
"
"
"


set backspace=indent,eol,start


" gui
if has('gui_running')
  set background=dark
  colorscheme solarized
else
  colorscheme zenburn
endif
