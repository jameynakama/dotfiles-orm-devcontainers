set nocompatible
filetype off

filetype plugin indent on
syntax on

let mapleader=","

syntax enable

" Formatting
set nu
set ruler
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set showcmd
set history=50
set autoindent
set copyindent
set backspace=indent,eol,start
set smartindent
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%>119v.\+/

" Folding
set foldcolumn=6
set foldmethod=indent
set foldlevel=99
set foldnestmax=10
set foldenable

" Remove trailing whitespace
nnoremap <F5> :%s/\s\+$//<CR>

" Toggle spell check
map <leader>s :set spell! spelllang=en_us<CR>

" Toggle search highlighting
set hlsearch
noremap <F4> :set hlsearch! hlsearch?<CR>

" Easy newlines in normal mode
nnoremap <S-Return> O<Esc>
nnoremap <CR> o<Esc>

" Filetype settings
filetype indent on
au FileType python setlocal tabstop=4
au FileType python setlocal shiftwidth=4
au FileType python setlocal softtabstop=4

au FileType c,h,java,js setlocal mps+==:;

au BufRead,BufNewFile *.scala set filetype=scala
au! Syntax scala source /usr/share/vim/addons/syntax/scala.vim

au FocusLost * :wa
set autowrite
