# Install

###### Notice
Your old files will be in `~/dotfiles_old`

### Clone
```bash
git clone git://github.com/javierchavez/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
```

### Add execute permission
```bash
chmod +x install.sh
chmod +x osx.sh
```

### Install
```bash
./install.sh
./osx.sh
```

**Restart Terminal**


# Contributing

1. fork
2. create your branch
3. fix
4. send me a merge request

Why do it this way?
*     I don't add a unecessiarily large number of branches in my repo.
*     You can request only the changes you want to be merged per
      branch then move back into your customized repo.
*     More documentation and history of events are logged as a result
      of a merge request.


# Set up emacs

1. Open emacs.
2. Wait until install is complete
3. Close and reopen.

You can easily delete packages you dont want loaded... just delete the
require in `emacs/init.el` e.g. delete (require
'init-virtualenvwrapper) if you dont want it.

Make sure you set location in `packages/init-virtualenvwrapper.el`
```lisp
(setq venv-location "/Users/javierc/Documents/virtualenvs/")
```

###### Noteable features
* smart-tab (autocomplete)
* multiple-cursors (C-x C-l like sublime)
* shell (C-x C-u)
* kill-buffer-and-window (C-x C-k)


# About bash
I am using bashrc as main so that emacs references it in shell.

Make sure you set or delete `PATH`s that are giving you trouble
e.g.
```bash
ANDROID_HOME
```

###### Stuff to install 

* `brew cask install racket`
* `brew cask install haskell-platform`
* `brew install gradle maven ssh-copy-id webp wget`


### What is `init.el`
I am requiring all the packages if the package is not installed then I
install it. Makes setting up emacs hassel free.


**Credits**
---

I got the function `(require-package 'pkg)`
[here](https://github.com/javierchavez/dotfiles/blob/master/emacs.d/packages/init-main.el#L11)
from [@Nuk9](https://github.com/Nuk9)


`install.sh` and `pythonrc` is from [github](http://dotfiles.github.io)


`osx.sh` hotcorners from
[@holman](https://github.com/holman/dotfiles)!
