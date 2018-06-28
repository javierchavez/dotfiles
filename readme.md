# Install

This is an env that I use for Pop_OS! 18.04 

###### Notice
Your old files will be in `~/dotfiles_old`

### Clone
```bash
git clone git://github.com/javierchavez/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
```

### Install
```bash
./install.sh
```

If you get permission **Error**, add execute permission
```bash
chmod +x install.sh
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



### What is `emacs.d/init.el`
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
