#Install

```bash
git clone git://github.com/javierchavez/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
chmod +x install.sh
chmod +x osx.sh
./install.sh
./osx.sh
```

**Restart Terminal**


Once ran your old files will be in `~/dotfiles_old`

#About emacs

1.    Open emacs.
2.    Wait until install is complete
3.    Close and reopen.

You can easily delete packages you dont want loaded... just delete the
require in `emacs/init.el` e.g. delete (require
'init-virtualenvwrapper) if you dont want it.

Make sure you set location in `packages/init-virtualenvwrapper.el`
```lisp
(setq venv-location "/Users/javierc/Documents/virtualenvs/")
```

###A few of my favorites
* smart-tab (autocomplete)
* multiple-cursors (C-c C-l like sublime)
* shell (C-x C-u)
* monoaki-theme
* kill-buffer-and-window (C-x C-k)


#About bash
I am using bashrc as main so that emacs references it in shell.

Make sure you set or delete `PATH`s that are giving you trouble
e.g.
```bash
ANDROID_HOME
```

#Brew
Brew will be installed if you dont have it. **Strongly** recommend
installing.

* emacs (if your are not using emacs app.)
* git
* git-flow
* gradle
* maven
* ssh-copy-id
* webp
* wget 


#etc
Here are some other notes about the dotfiles.

###How `emacs.d/packages/` was made

First i M-x package-list and copied all the installed packages and
saved it to emacs_packages.txt.

Then while inside of the packages dir I ran...

```bash
while read line; do echo "(require-package '${line}) (provide 'init-${line})"> "init-${line}.el" ; done < ../emacs_packages.txt
```

**This needs to be refactored into a actual script** 

*	Needs to check if file exists
*	If it does then skip
*	If not then make file with contents


Each file contains cofig for givin package.


###How `emacs.d/config` was made

Simply over time configuring emacs.

###What is `init.el`
I am requiring all the packages if the package is not installed then I
install it.


**Credits**

I got the function `(require-package 'pkg)`
[here](https://github.com/javierchavez/dotfiles/blob/master/emacs.d/packages/init-main.el#L11)
from [@Nuk9](https://github.com/Nuk9)


`install.sh` is from [github](http://dotfiles.github.io)


`osx.sh` hotcorners from
[@holman](https://github.com/holman/dotfiles)!





