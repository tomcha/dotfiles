set whichwrap=b,s,[,],<,>,~
set mouse=
set background=dark
syntax on
set nohlsearch
set scrolloff=15
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
set tabstop=2
set expandtab
set cindent
set shiftwidth=2
"colorscheme koehler 
"colorscheme jerrybeans
colorscheme molokai
inoremap <C-j> <C-[>
inoremap <C-k> <C-[><S-a>
inoremap {} {}<left>
inoremap [] []<left>
inoremap <> <><left>
inoremap () ()<left>
inoremap '' ''<left>
inoremap "" ""<left>
inoremap <Bar><Bar> <Bar><Bar><left>
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
" 拡張子javaのファイルを作成した際に、.vim/template/java.txtテンプレートを読み込みます
autocmd BufNewFile *.java 0r $HOME/.vim/template/java.txt
" 拡張子cのファイルを作成した際に、.vim/template/c.txtテンプレートを読み込みます
autocmd BufNewFile *.c 0r $HOME/.vim/template/c.txt

 set backupdir=~/tmp
 set directory=~/tmp
 set noundofile

" vim-indent-guides の設定
" vim立ち上げたときに、自動的にvim-indent-guidesをオンにする
let g:indent_guides_enable_on_vim_startup=1
" ガイドをスタートするインデントの量
let g:indent_guides_start_level=2
" 自動カラーを無効にする
let g:indent_guides_auto_colors=0
" 奇数インデントのカラー
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=#262626 ctermbg=gray
" 偶数インデントのカラー
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=#3c3c3c ctermbg=darkgray
" ハイライト色の変化の幅
let g:indent_guides_color_change_percent = 30
" ガイドの幅
let g:indent_guides_guide_size = 1
" Markdownの設定
let g:previm_open_cmd = 'open -a Firefox'
"---------------------------
" Start Neobundle Settings.
"---------------------------
" bundleで管理するディレクトリを指定
set runtimepath+=~/.vim/bundle/neobundle.vim/
 
" Required:
call neobundle#begin(expand('~/.vim/bundle/'))
 
" neobundle自体をneobundleで管理
NeoBundleFetch 'Shougo/neobundle.vim'
 
" 今後このあたりに追加のプラグインをどんどん書いて行きます！！"

" NERDTreeを設定                  
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'mattn/emmet-vim' 
NeoBundle 'thinca/vim-quickrun'
NeoBundle 'grep.vim'
NeoBundle 'scrooloose/syntasric'
NeoBundle 'nathanaelkane/vim-indent-guides'
" Markdown閲覧プラグイン
NeoBundle 'tyru/open-browser.vim'
NeoBundle 'kannokanno/previm'
call neobundle#end()
" Required:
filetype plugin indent on
 
" 未インストールのプラグインがある場合、インストールするかどうかを尋ねてくれるようにする設定
" 毎回聞かれると邪魔な場合もあるので、この設定は任意です。
"NeoBundleCheck
 
"-------------------------
" End Neobundle Settings.
"-------------------------
