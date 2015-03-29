to install

	
	chmod 755 install.sh
	install.sh



#how /packages was made

while inside of the packages dir I ran...

    while read line; do echo "(require-package '${line}) (provide 'init-${line})"> "init-${line}.el" ; done < ../emacs_packages.txt

**this needs to be refactored into a actual script** 

*	Needs to check if file exists
*	If it does then skip
*	If not then make file with contents