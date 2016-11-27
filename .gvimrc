if has('gui_macvim')
  set showtabline=2    " タブを常に表示
  set transparency=10  " 透明度
"  set transparency=0   " 透明度
  set imdisable        " IME OFF
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

  colorscheme jellybeans" カラースキーマ
  "colorscheme molokai " カラースキーマ
  "colorscheme hybrid " カラースキーマ
  "colorscheme elflord " カラースキーマ
  "colorscheme railscasts " カラースキーマ
  "colorscheme koehler " カラースキーマ
  "colorscheme morning " カラースキーマ
  set columns=150      " 横幅
  set lines=50         " 行数

  set nowrapscan       " 検索をファイルの先頭へループしない

  " フォント設定
  set guifontwide=SourceCodePro-Light:h18
  set guifont=SourceCodePro-Light:h18
  "set guifontwide=ゆたぽん（コーディング）:h22
  "set guifont=ゆたぽん（コーディング）:h22
  "set guifontwide=UnifontMedium:h22
  "set guifont=UnifontMedium:h22
  "フォント設定プレゼン用
  "set guifontwide=SourceCodePro-Light:h24
  "set guifont=SourceCodePro-Light:h24

  set scrolloff=15
endif
