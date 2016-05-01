set shell=sh
" gocode
" https://github.com/nsf/gocode

" Pathogen
" mkdir -p ~/.vim/autoload ~/.vim/bundle; \
" curl -Sso ~/.vim/autoload/pathogen.vim \
"     https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim
execute pathogen#infect()

" Syntastic
" cd ~/.vim/bundle
" git clone https://github.com/scrooloose/syntastic.git

" NERDTREE
" cd ~/.vim/bundle
" git clone https://github.com/scrooloose/nerdtree.git
autocmd vimenter * if !argc() | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>
let NERDTreeIgnore = ['\.meta$']

" Supertab
" cd ~/.vim/bundle
" git clone https://github.com/ervandew/supertab.git
"let g:SuperTabDefaultCompletionType = "context"

" vim-go
" cd ~/.vim/bundle
" git clone https://github.com/fatih/vim-go.git
let g:go_fmt_command = "gofmt"

" vim-slime
" cd ~/.vim/bundle
" https://github.com/jpalardy/vim-slime
let g:slime_target = "tmux"

" Haskell
au FileType haskell nnoremap <buffer> <F1> :HdevtoolsType<CR>
au FileType haskell nnoremap <buffer> <silent> <F2> :HdevtoolsClear<CR>

" Powerline
set rtp+=/usr/local/powerline/powerline/bindings/vim
set laststatus=2

" Line Numbers
set number

" Color Schemes
set background=dark
colorscheme gruvbox

if !has("guid_running")
	let g:gruvbox_italic=0
endif

" Syntax
syntax on

" General
set tabstop=4
set shiftwidth=4

set dir=/tmp//

" File Types
au BufRead,BufNewFile *.md set filetype=markdown

filetype plugin indent on

