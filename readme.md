#Install
	
	chmod +x install.sh
	install.sh


#About emacs
I would suggest *brew install emacs*.
1. Then run.
2. Wait until install is complete
3. Close and reopen.

You can easily delete packages you dont want loaded... just delete the
require in `emacs/init.el` e.g. delete (require
'init-virtualenvwrapper) if you dont want it.

Make sure you set location in `packages/init-virtualenvwrapper.el`
`
    (setq venv-location "/Users/javierc/Documents/virtualenvs/")
`

#About bash
I am using bashrc as main so that emacs references it in shell.

Make sure you set
`
    ANDROID_HOME
`

#Brew
Brew will be installed if you dont have it. **Strongly** recommend
installing.

* git
* git-flow
* gradle
* maven
* ssh-copy-id
* webp
* wget 



###A few of my favorites
* smart-tab (autocomplete)
* multiple-cursors (C-c C-l like sublime)
* shell (C-x C-u)
* monoaki-theme
* kill-buffer-and-window (C-x C-k)

#etc
Here are some other notes about the dotfiles.

###How `emacs.d/packages/` was made

First i M-x package-list and copied all the installed packages and
saved it to emacs_packages.txt.

Then while inside of the packages dir I ran...

    while read line; do echo "(require-package '${line}) (provide 'init-${line})"> "init-${line}.el" ; done < ../emacs_packages.txt


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




