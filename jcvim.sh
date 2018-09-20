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
cp vimrc ~/vimfiles

# git support stuff
git clone https://github.com/sjl/badwolf.git ~/vimfiles/git/badwolf
git clone https://github.com/scrooloose/nerdtree.git ~/vimfiles/git/nerdtree
git clone https://github.com/itchyny/lightline.vim ~/vimfiles/git/lightline

# move files to correct dirs
mkdir ~/vimfiles/bundle
mkdir ~/vimfiles/autoload
mv  ~/vimfiles/git/nerdtree ~/vimfiles/bundle/nerdtree
mv  ~/vimfiles/git/badwolf/colors ~/vimfiles/
mv  ~/vimfiles/git/badwolf/contrib ~/vimfiles/
mv  ~/vimfiles/git/lightline ~/vimfiles/bundle/

curl -LSso ~/vimfiles/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# check if .vimrc already exists and back it up
if [ -e ~/.vimrc ]
then
    mv ~/.vimrc ~/.vimrc_bak
fi

# make symbolic links
ln -s ~/vimfiles ~/.vim
ln -s ~/vimfiles/vimrc ~/.vimrc
