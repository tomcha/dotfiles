"setting系
"文字コードをutf-8に設定
set encoding=utf-8
"バックアップを作らない
set nobackup
"スワップファイルを作らない
set noswapfile
"編集中のファイルが変更されたら自動で読み直す
set autoread
"行末、行頭でのカーソル挙動
set whichwrap=b,s,[,],<,>,~
"マウスの無効化
set mouse=
"ノーマルモードへ戻る時のime自動無効化
set imdisable
"inoremap <ESC> <ESC>:set iminsert=0<CR>
"inoremap <C-[> <C-[>:set iminsert=0<CR>
"ダーク系カラースキーマ
set background=dark
"シンタックスハイライトと検索時の無効化
syntax on
"検索文字をハイライトする
set hls

highlight StatusLine ctermfg=black ctermbg=grey
highlight CursorLine ctermfg=none ctermbg=darkgray cterm=none
highlight MatchParen ctermfg=none ctermbg=darkgray
highlight Comment ctermfg=DarkGreen ctermbg=NONE
highlight Directory ctermfg=DarkGreen ctermbg=NONE
" 256色対応
set t_Co=256
" OSのクリップボードを使う
set clipboard=unnamed
" 対応括弧に<と>のペアを追加
set matchpairs& matchpairs+=<:>
" 対応括弧をハイライト表示する
set showmatch
" 対応括弧の表示秒数を3秒にする
set matchtime=3
" 不可視文字を表示
set list
set listchars=tab:»-,trail:-,extends:»,precedes:«,nbsp:%,eol:↲
" 行末1文字までカーソルを移動できるようにする
set virtualedit=onemore
"スクロール開始行の設定
set scrolloff=15

"ステータスラインの常時表示＆表示内容
set laststatus=2
"set statusline=%F%r%h%=

" for lightline.vim
let g:lightline = {
  \ 'colorscheme': 'PaperColor',
  \ 'active': {
  \   'left': [
  \     ['mode', 'paste'],
  \     ['readonly', 'filename', 'modified', 'anzu']
  \   ]
  \ },
  \ 'component_function': {
  \   'anzu': 'anzu#search_status'
  \ }
  \ }
"行番号の表示
set number
"ノーマルモードでの検索ON
set incsearch
"検索で大文字小文字を無視
set ignorecase
"コマンドモードでの補完ON
set wildmenu wildmode=list:full
"インサートモードでのカーソルキー形状変化(Macのみ)
let &t_SI = "\e]50;CursorShape=1\x7"
let &t_EI = "\e]50;CursorShape=0\x7"
" ノーマルモードではカーソル行を強調表示しない
set nocursorline
" インサートモードの時のみ、カーソル行をハイライトする
autocmd InsertEnter,InsertLeave * set cursorline!
"tabキーでの移動挙動
nmap <silent> <tab> 15<right>
vmap <silent> <tab> <C-o>15<right>
nmap <silent> <S-tab> 15<left>
vmap <silent> <S-tab> 15<left>
"nmap <silent> <C-n> 	 :update<CR>:bn<CR>
"imap <silent> <C-n> <ESC>:update<CR>:bn<CR>
"vmap <silent> <C-n> <ESC>:update<CR>:bn<CR>
"cmap <silent> <C-n> <ESC>:update<CR>:bn<CR>
map <C-n> :NERDTreeToggle<CR>

"colorscheme evening
"colorscheme jellybeans
"colorscheme molokai
"colorscheme pixelmerto
"colorscheme monokai
"colorscheme hybrid
"colorscheme desert
"colorscheme solarized
"colorscheme elflord
"colorscheme railscast
"colorscheme koehler
"colorscheme morning
"colorscheme badwolf
colorscheme PaperColor
"colorscheme xedit"ライブコーディング用

inoremap <C-j> <C-[>
" 入力モード中に素早くjjと入力した場合はESCとみなす
inoremap <silent> jj <C-[>
inoremap <silent> っｊ <C-[>
inoremap <C-k> <C-[><S-a>
inoremap {} {}<left>
inoremap [] []<left>
inoremap <> <><left>
inoremap () ()<left>
inoremap '' ''<left>
inoremap "" ""<left>
inoremap <Bar><Bar> <Bar><Bar><left>
"inoremap // //<left>

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
" 拡張子goのファイルを作成した際に、.vim/template/go.txtテンプレートを読み込みます
autocmd BufNewFile *.go 0r $HOME/.vim/template/go.txt

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
"set runtimepath+=~/.vim/bundle/neobundle.vim/
 
" Required:
"call neobundle#begin(expand('~/.vim/bundle/'))

"NeoComplete(コード補完)
"let g:neocomplete#enable_at_startup = 1
 
" neobundle自体をneobundleで管理
"NeoBundleFetch 'Shougo/neobundle.vim'
 
" 今後このあたりに追加のプラグインをどんどん書いて行きます！！"

" NERDTreeを設定                  
"NeoBundle 'scrooloose/nerdtree'
"NeoBundle 'mattn/emmet-vim' 
"NeoBundle 'thinca/vim-quickrun'
"NeoBundle 'grep.vim'
"NeoBundle 'scrooloose/syntasric'
"NeoBundle 'nathanaelkane/vim-indent-guides'
" Markdown閲覧プラグイン
"NeoBundle 'tyru/open-browser.vim'
"NeoBundle 'kannokanno/previm'
"カラースキーム
"NeoBundle 'jpo/vim-railscasts-theme'
"NeoBundle 'tomasr/molokai'
"unite.vimの使用
"NeoBundle 'Shougo/unite.vim'
"call neobundle#end()
" Required:
"filetype plugin indent on
 
" 未インストールのプラグインがある場合、インストールするかどうかを尋ねてくれるようにする設定
" 毎回聞かれると邪魔な場合もあるので、この設定は任意です。
"NeoBundleCheck
 
"-------------------------
" End Neobundle Settings.
"-------------------------

"""""""""""""""""""""""""
"      インデント
""""""""""""""""""""""""
set autoindent          "改行時に前の行のインデントを計測
set smartindent         "改行時に入力された行の末尾に合わせて次の行のインデントを増減する 
set cindent             "Cプログラムファイルの自動インデントを始める
set smarttab            "新しい行を作った時に高度な自動インデントを行う
set expandtab           "タブ入力を複数の空白に置き換える 

set tabstop=4           "タブを含むファイルを開いた際, タブを何文字の空白に変換するか
set shiftwidth=4        "自動インデントで入る空白数
set softtabstop=0       "キーボードから入るタブの数

if has("autocmd")
  "ファイルタイプの検索を有効にする
  filetype plugin on
  "ファイルタイプに合わせたインデントを利用
  filetype indent on
  "sw=softtabstop, sts=shiftwidth, ts=tabstop, et=expandtabの略
  autocmd FileType c           setlocal sw=4 sts=4 ts=4 et
  autocmd FileType html        setlocal sw=4 sts=4 ts=4 et
  autocmd FileType ruby        setlocal sw=2 sts=2 ts=2 et
  autocmd FileType perl        setlocal sw=4 sts=4 ts=4 et
  autocmd FileType js          setlocal sw=4 sts=4 ts=4 et
  autocmd FileType zsh         setlocal sw=4 sts=4 ts=4 et
  autocmd FileType python      setlocal sw=4 sts=4 ts=4 et
  autocmd FileType scala       setlocal sw=4 sts=4 ts=4 et
  autocmd FileType json        setlocal sw=4 sts=4 ts=4 et
  autocmd FileType html        setlocal sw=4 sts=4 ts=4 et
  autocmd FileType css         setlocal sw=4 sts=4 ts=4 et
  autocmd FileType scss        setlocal sw=4 sts=4 ts=4 et
  autocmd FileType sass        setlocal sw=4 sts=4 ts=4 et
  autocmd FileType javascript  setlocal sw=4 sts=4 ts=4 et
  autocmd FileType swift       setlocal sw=4 sts=4 ts=4 et
endif

"plantumlの生成スクリプト
let g:plantuml_executable_script = "~/dotfiles/plantuml"

let g:sonictemplate_vim_template_dir = [
      \ '~/.vim/template'
      \]
"swiftのシンタックスプラグインの為
"execute pathogen#infect()
"syntax on
"filetype plugin indent on
"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif
 
" Required:
set runtimepath^=~/.vim/dein/repos/github.com/Shougo/dein.vim
"tree表示プラグインのコマンド設定
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" 他のバッファをすべて閉じた時にNERDTreeが開いていたらNERDTreeも一緒に閉じる。
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Required:
call dein#begin(expand('~/.vim/dein'))
 
" Let dein manage dein
" Required:
call dein#add('Shougo/dein.vim')
 
" Add or remove your plugins here:
call dein#add('Shougo/neosnippet.vim')
call dein#add('Shougo/neosnippet-snippets')
"Add from neobundle
call dein#add('mattn/emmet-vim')
call dein#add('thinca/vim-quickrun')
call dein#add('nathanaelkane/vim-indent-guides')
" status line plugin
call dein#add('itchyny/lightline.vim')
" Markdown閲覧プラグイン
call dein#add('tyru/open-browser.vim')
call dein#add('kannokanno/previm')
"カラースキーム
call dein#add('jpo/vim-railscasts-theme')
call dein#add('tomasr/molokai')
"typescript Syntax
call dein#add('leafgarland/typescript-vim')
" You can specify revision/branch/tag.
call dein#add('Shougo/vimshell', { 'rev': '3787e5' })
" Mark.vim
"call dein#add('sago35/mark.vim')
"ツリー表示プラグイン
call dein#add('scrooloose/nerdtree')
"swift シンタックス
call dein#add('toyamarinyon/vim-swift')
"rubocop シンタックスチェック
"call dein#add('vim-syntastic/syntastic')
"let g:syntastic_ruby_checkers=['rubocop', 'mri']
"let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': ['ruby'] }
"テンプレート選択プラグイン 
call dein#add('mattn/sonictemplate-vim')
"plantumlプラグイン
call dein#add("aklt/plantuml-syntax")
call dein#add('scrooloose/vim-slumlord')
let g:plantuml_executable_script = "~/dotfiles/plantuml"
"ruby 自動end入力プラグイン
call dein#add("tpope/vim-endwise")
" Required:
call dein#end()
 
" Required:
filetype plugin indent on
 
" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif
 
"End dein Scripts-------------------------
