#!/usr/bin/env zsh

command=("echo Update Homebrew" "brew update" "brew upgrade" )
command=(${command[@]} "echo Update plenv" "cd ~/.plenv" "git pull" "cd ./plugins/perl-build" "git pull")
command=(${command[@]} "echo Update rbenv" "cd ~/.rbenv" "git pull" "cd ./plugins/ruby-build" "git pull")
command=(${command[@]} "echo Update pyenv" "cd ~/.pyenv" "git pull" "cd ./plugins/python-build" "git pull")
for com in ${command[@]}
do
    eval $com
done
