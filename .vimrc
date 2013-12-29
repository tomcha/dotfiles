set nocompatible
set whichwrap=b,s,[,],<,>,~
set mouse=
syntax on
set nohlsearch
highlight StatusLine ctermfg=black ctermbg=grey
highlight CursorLine ctermfg=none ctermbg=darkgray cterm=none
highlight MatchParen ctermfg=none ctermbg=darkgray
highlight Comment ctermfg=DarkGreen ctermbg=NONE
highlight Directory ctermfg=DarkGreen ctermbg=NONE
set laststatus=2
set statusline=%F%r%h%=
set number
set incsearch
set ignorecase
set wildmenu wildmode=list:full
nmap <silent> <tab> 15<right>
vmap <silent> <tab> <C-o>15<right>
nmap <silent> <S-tab> 15<left>
vmap <silent> <S-tab> 15<left>
nmap <silent> <C-n> 	 :update<CR>:bn<CR>
imap <silent> <C-n> <ESC>:update<CR>:bn<CR>
vmap <silent> <C-n> <ESC>:update<CR>:bn<CR>
cmap <silent> <C-n> <ESC>:update<CR>:bn<CR>

set smarttab
set tabstop=4
set expandtab
set cindent
set shiftwidth=4
colorscheme molokai
inoremap <C-j> <C-[>
inoremap {} {}<left>
inoremap [] []<left>
inoremap <> <><left>
inoremap () ()<left>
inoremap '' ''<left>
inoremap "" ""<left>
inoremap // //<left>

nnoremap <Space><Space>. :e $MYVIMRC<CR>
nnoremap <Space><Space>.. :<C-u>source $MYVIMRC<CR>

"----------------------------------------------------
" テンプレート補完
"----------------------------------------------------
" 拡張子shのファイルを作成した際に、.vim/template/sh.txtテンプレートを読み込みます
"autocmd BufNewFile *.sh 0r $HOME/.vim/template/sh.txt

" 拡張子rbのファイルを作成した際に、.vim/template/ruby.txtテンプレートを読み込みます
autocmd BufNewFile *.rb 0r $HOME/.vim/template/ruby.txt
 
" 拡張子plのファイルを作成した際に、.vim/template/perl.txtテンプレートを読み込みます
autocmd BufNewFile *.pl 0r $HOME/.vim/template/perl.txt

" 拡張子htmlのファイルを作成した際に、.vim/template/perl.txtテンプレートを読み込みます
autocmd BufNewFile *.html 0r $HOME/.vim/template/html.txt
