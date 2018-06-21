#!/bin/bash
############################
# .make.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/.dotfiles
############################

####### Variables ########
# dotfiles directory
dir=~/.dotfiles
# old dotfiles backup directory
olddir=~/dotfiles_old
# list of files/folders to symlink in homedir
files="tmux.conf bash_profile bashrc emacs.d gitconfig gitignore"    


# create dotfiles_old in homedir
echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir
echo "...done"

# change to the dotfiles directory
echo "Changing to the $dir directory"
cd $dir
echo "...done"



# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks 
for file in $files; do
    echo "Moving any existing dotfiles from ~ to $olddir"
    # mv silent
    mv ~/.$file ~/dotfiles_old/ 2>/dev/null
    echo "Creating symlink to $file in home directory."
    ln -s $dir/$file ~/.$file
done
