#!/usr/bin/env zsh

oldlink=`readlink ~/.vimrc`
if test $oldlink = "/Users/${USERNAME}/dotfiles/.vimrc"; then
    newlink="/Users/${USERNAME}/dotfiles/.vimrc_bringup"
elif test $oldlink = "/Users/${USERNAME}/dotfiles/.vimrc_bringup"; then
    newlink="/Users/${USERNAME}/dotfiles/.vimrc"
else
fi
ln -sf $newlink ~/.vimrc
echo "changed alias ${oldlink} -> \e[32m${newlink}\e[m"

