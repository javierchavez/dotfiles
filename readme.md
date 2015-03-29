#Install
	
	chmod +x install.sh
	install.sh


#emacs
I would suggest *brew install emacs*. Then run. after its done
installing close and reopen.

###A few of my favorites
*   smart-tab (autocomplete)
*   multiple-cursors (C-c C-l like sublime)
*   shell (C-x C-u)
*   monoaki-theme
*   kill-buffer-and-window (C-x C-k)

#etc
Here are some other notes about the dotfiles.

###how `emacs.d/packages/` was made

First i M-x package-list and copied all the installed packages and
saved it to emacs_packages.txt.

Then while inside of the packages dir I ran...

    while read line; do echo "(require-package '${line}) (provide 'init-${line})"> "init-${line}.el" ; done < ../emacs_packages.txt


**This needs to be refactored into a actual script** 

*	Needs to check if file exists
*	If it does then skip
*	If not then make file with contents


Each file contains cofig for givin package.


###how `emacs.d/config` was made

Simply over time configuring emacs.

###what is init.el
I am requiring all the packages if the package is not installed then I
install it.




