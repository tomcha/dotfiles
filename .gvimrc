if has('gui_macvim')
  "set highlight LineNr guifg=#050505
 autocmd ColorScheme * highlight LineNr ctermfg=239
  set showtabline=2    " タブを常に表示
  set transparency=12 " 透明度
  " set transparency=0   " 透明度ライブコーディング用

"  set noimdisableactivate "自動的に日本語入力(IM)をオンにする
  set imdisable       " IME 自動ON/OFF をOFF

  set guioptions-=T    " ツールバー非表示
  set antialias        " アンチエイリアス
"  set tabstop=4        " タブサイズ
  set number           " 行番号表示
  set nobackup         " バックアップなし
  set visualbell t_vb= " ビープ音なし

  " タブの画面上での幅
  set tabstop=2
  " タブをスペースに展開
  set expandtab
  " オートインデント
  set cindent
  " オートインデントの深さ
  set shiftwidth=2
  " バックスペースでインデントや改行を削除
  set backspace=indent,eol,start
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
  "
  "colorscheme PaperColor
  "colorscheme xedit"ライブコーディング用

  set columns=180      " 横幅
  set lines=51         " 行数

  set nowrapscan       " 検索をファイルの先頭へループしない

  " フォント設定
  "set guifontwide=SourceCodePro-ExtraLight:h18
  "set guifont=SourceCodePro-ExtraLight:h18
"  set guifontwide=SourceHanCodeJP-ExtraLight:h19  " デフォ
"  set guifont=SourceHanCodeJP-ExtraLight:h19        " デフォ
  "set guifontwide=SourceHanCodeJP-Medium:h17  " ライブコーディング用
  "set guifont=SourceHanCodeJP-Medium:h17      " ライブコーディング用
  "set guifontwide=SourceHanCodeJP-Light:h18
  "set guifont=SourceHanCodeJP-Light:h18
  set guifontwide=ゆたぽん（コーディング）Backsl:h20
  set guifont=ゆたぽん（コーディング）Backsl:h20
  "set guifontwide=x8y12pxTheStrongGamer:h22
  "set guifont=x8y12pxTheStrongGamer:h22
  "set guifontwide=UnifontMedium:h22
  "set guifont=UnifontMedium:h22
  "set guifontwide=migu-1m-regular:h24
  "set guifont=migu-1m-regular:h24
  "フォント設定プレゼン用
  " set guifontwide=SourceCodePro-Light:h18
  " set guifont=SourceCodePro-Light:h18

  set scrolloff=15
endif
