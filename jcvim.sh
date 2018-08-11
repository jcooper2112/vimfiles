#!/usr/bin/env bash

# check if vimfiles exists, back it up and remove it.
if [ -e ~/vimfiles ]
then
    tar -zcvf ~/vimfiles_bak.tar.gz ~/vimfiles
    rm -rf ~/vimfiles
fi

# make a new vimfiles directory
mkdir ~/vimfiles

# copy my git files over to the vimfiles dir
cp * ~/vimfiles

# git support stuff
git clone https://github.com/sjl/badwolf.git ~/vimfiles/git/badwolf
git clone https://github.com/scrooloose/nerdtree.git ~/vimfiles/git/nerdtree

# copy files to correct dirs
cp -r ~/vimfiles/git/nerdtree/autoload ~/vimfiles/
cp -r ~/vimfiles/git/badwolf/colors ~/vimfiles/
cp -r ~/vimfiles/git/badwolf/contrib ~/vimfiles/

curl -LSso ~/vimfiles/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# check if .vimrc already exists and back it up
if [ -e ~/.vimrc ]
then
    mv ~/.vimrc ~/.vimrc_bak
fi

# make symbolic links
ln -s ~/vimfiles/vimfiles ~/.vim
ln -s ~/vimfiles/vimrc ~/.vimrc
