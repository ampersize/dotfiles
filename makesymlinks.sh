#!/bin/bash
############################
# .make.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

########## Variables

checkout=~/dotfiles # dotfiles directory
files="vimrc vim"   # list of files/folders to symlink in homedir
dirs="bin"

##########
mkdir ~/dotfiles_old/
cd $checkout

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks 
for file in $files; do
	echo "Moving any existing dotfiles from ~ to $olddir"
	mv ~/.$file ~/dotfiles_old/
	echo "Creating symlink to $checkout in home directory."
	ln -s $checkout/$file ~/.$file
done

cd $dir
# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks 
for dir in $dirs; do
	echo "Moving any existing dotfiles from ~ to $olddir"
	mv ~/$dir ~/dotfiles_old/
	echo "Creating symlink to $checkout in home directory."
	ln -s $checkout/$dir ~/$dir
done
