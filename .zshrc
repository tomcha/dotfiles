#プロンプト設定
autoload colors; colors
export LANG=ja_JP.UTF-8
PROMPT="
 %{${fg[yellow]}%}%~%{${reset_color}%}
[%n]$ "

#PATH
eval $(/usr/libexec/path_helper -s)
export PATH="/usr/local/mysql/bin:$PATH"

PROMPT2='[%n]> '

#補完
autoload -U compinit; compinit
#入門書より
setopt auto_pushd
setopt auto_cd
setopt correct
setopt cdable_vars

#キーバインド(vi or emacs)
#bindkey -v

# "bindkey"の第一引数は、任意のキー
# viのキーバインドでインクリメンタルサーチを有効化
#bindkey "^R" history-incremental-search-backward
#bindkey "^S" history-incremental-search-forward

# ヒストリをファイルに保存
HISTFILE=~/.zhistory
SAVEHIST=1000
setopt histnostore

#grobの設定
setopt extendedglob
setopt numericglobsort
setopt noclobber

#ターミナルのタイトル
case "${TERM}" in
kterm*|xterm)
    precmd() {
        echo -ne "\033]0;${USER}@${HOST}\007"
    }
    ;;
esac

#色設定
export LSCOLORS=gxfxxxxxcxxxxxxxxxgxgx
export LS_COLORS='di=01;36:ln=01;35:ex=01;32'
zstyle ':completion:*' list-colors 'di=36' 'ln=35' 'ex=32'

case ${UID} in
0)
#PROMPT="%B%{${fg[red]}%}%/#%{${reset_color}%}%b "
#PROMPT2="%B%{${fg[red]}%}%_#%{${reset_color}%}%b "
SPROMPT="%B%{${fg[red]}%}%r is correct? [n,y,a,e]:%{${reset_color}%}%b "
[ -n "${REMOTEHOST}${SSH_CONNECTION}" ] && 
PROMPT="%{${fg[white]}%}${HOST%%.*} ${PROMPT}"
;;
*)
#PROMPT="%{${fg[red]}%}%/%%%{${reset_color}%} "
#PROMPT2="%{${fg[red]}%}%_%%%{${reset_color}%} "
SPROMPT="%{${fg[red]}%}%r is correct? [n,y,a,e]:%{${reset_color}%} "
[ -n "${REMOTEHOST}${SSH_CONNECTION}" ] && 
PROMPT="%{${fg[white]}%}${HOST%%.*} ${PROMPT}"
;;
esac

#文字コード
export LANG=ja_JP.UTF-8


# ruby,perl,pythonのバージョン管理設定
export PATH="$HOME/.plenv/bin:$PATH"
eval "$(plenv init -)"
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# ターミナルからMacVimを起動する
export EDITOR=/Applications/MacVim.app/Contents/MacOS/Vim
#export PATH="/Applications/MacVim.app/Contents/MacOS/"
#alias mvim='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/mvim "$@"'
alias mvim='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/bin/mvim "$@"'
alias vim='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim "$@"'

#ターミナルからswiftを起動する
export PATH="$PATH:/Applications/Xcode.app//Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin"

#lsコマンドのエイリアス設定
alias ls='ls -G'
alias wget='curl -O'
alias rm='rmtrash'

#Perl6のエイリアス
#export PATH=~/.rakudobrew/bin:$PATH

#goのパス
export GOROOT=/usr/local/opt/go/libexec
export GOPATH=$HOME
export PATH="$PATH:$GOPATH/bin"
#export PATH=$PATH:/usr/local/opt/go/libexec/bin

function peco-select-history() {
    local tac
    if which tac > /dev/null; then
        tac="tac"
    else
        tac="tail -r"
    fi
    BUFFER=$(\history -n 1 | \
        eval $tac | \
        awk '!a[$0]++' |  \
        peco --query "$LBUFFER")
    CURSOR=$#BUFFER
    zle clear-screen
}
zle -N peco-select-history

#pcd(peco-cd)
PECO_CD_FILE=$HOME/.peco/.peco-cd #お気に入りを記録するファイル
function pcd() {
  if [ $1 ] && [ $1 = "add" ]; then
    if [ $2 ]; then
      ADD_DIR=$2
      if [ $2 = "." ]; then
        ADD_DIR=$(pwd) 
      fi
      echo "add $ADD_DIR to $PECO_CD_FILE"
      echo $ADD_DIR >> $PECO_CD_FILE
    fi
  elif [ $1 ] && [ $1 = "edit" ]; then
    if [ $EDITOR ]; then
      $EDITOR $PECO_CD_FILE
    fi
  else
    cd $(cat $PECO_CD_FILE | peco)
  fi
}
bindkey '^r' peco-select-history

#mecab設定
export PATH=/usr/local/mecab/bin:$PATH

#hubコマンド
#export PATH="~/bin:$PATH"
#eval "$(hub alias -s)"

#javascript core パス設定
alias jsc="/System/Library/Frameworks/JavaScriptCore.framework/Versions/A/Resources/jsc"
#jslint用パス設定
#alias jslint="$HOME/ljs/JSC_JSLINT_WRAPPER/jslint"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
export PATH="$PATH:/usr/local/opt/go/libexec/bin"
#export PATH="$HOME/perl6/bin:$PATH"

