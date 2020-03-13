"VIM SETTINGS
filetype plugin indent on
syntax enable
colo holokai
let mapleader = " "
set nu
set hlsearch
set incsearch
set tags=./tags,tags;$HOME
set backspace=2
set hidden
set autoread
set tabstop=4
set shiftwidth=4
set expandtab
set nowrap
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <Leader>c :%s///ng <CR> 
nnoremap <Leader>n :noh<CR>
nnoremap <Leader>r "0p
nnoremap <Leader>f $%
vnoremap <Leader>f $%
nnoremap <Leader>x :%!xxd<CR>
nnoremap <Leader>l :e **/*
inoremap <C-l> <C-o>a

"PLUGIN SETTINGS
nnoremap <F8> :NERDTreeToggle<CR>
nnoremap <F9> :TagbarToggle<CR>
nnoremap <Leader>t :Tabularize /
vnoremap <Leader>t :Tabularize /
nnoremap <Leader>e :SyntasticReset<CR>
nnoremap <Leader>p :CtrlPTag<CR>
let delimitMate_expand_cr = 1
let g:airline#extensions#whitespace#enabled = 0
let g:ctrlp_clear_cache_on_exit =0
let g:ctrlp_by_filename =1
let g:syntastic_mode_map ={'mode': 'passive'}
let g:tagbar_autofocus = 1

"PROJECT SETTINGS
nnoremap <Leader>s :grep -r --exclude-dir={cmake-build-debug,build,config,.git,tasking_build,delivery_build,tools,doc,cmocka} --exclude={tags,*.swp,*.sqlite,*.obj,*.a,*.html,*.exe,*.rdump} <cword> .<CR>
command! -nargs=1 Search :grep -r --exclude-dir={cmake-build-debug,build,config,.git,tasking_build,delivery_build,tools,doc,cmocka} --exclude={tags,*.swp,*.sqlite,*.obj,*.a,*.html,*.exe,*.rdump} <args> .
command! -nargs=+ Refactor :cfdo %s/<args>/g|update
let &makeprg='(cd ./build && mingw32-make)'
