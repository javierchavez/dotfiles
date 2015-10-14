#!/bin/bash
############################
# .make.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/.dotfiles
############################

########## Variables

dir=~/.dotfiles                    # dotfiles directory
olddir=~/dotfiles_old             # old dotfiles backup directory
files="tmux.conf bash_profile bashrc emacs.d gitconfig gitignore pythonrc pylintrc melpa-install"    # list of files/folders to symlink in homedir


##########

# Check for Homebrew
if test ! $(which brew)
then
  echo "  Installing Homebrew for you."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  echo "  Installing Cask for you."
  brew install caskroom/cask/brew-cask
  echo "  Installing emacs."
  brew install emacs --HEAD --cocoa
  ln -s /usr/local/Cellar/emacs/HEAD/Emacs.app /Applications
fi

# Install homebrew packages
# -------------------------------------------
# cat brew_leaves.txt | xargs brew install
# -------------------------------------------

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
    mv ~/.$file ~/dotfiles_old/
    echo "Creating symlink to $file in home directory."
    ln -s $dir/$file ~/.$file
done

mv ~/tmux.conf ~/dotfiles_old/
ln -s $dir/tmux.conf ~/tmux.conf

echo "Creating history files for python."
mkdir $HOME/.history
touch $HOME/.history/python

if [[ `uname` == 'Darwin' ]]; then
    rm -f "$HOME/Library/Application Support/Sublime Text 3/Packages/User/Preferences.sublime-settings"
    ln -s $dir/Preferences.sublime-settings "$HOME/Library/Application Support/Sublime Text 3/Packages/User/Preferences.sublime-settings"
fi

