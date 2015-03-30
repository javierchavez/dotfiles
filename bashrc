if [ -f ~/.work_bash ];
then
    source ~/.work_bash
fi

if [ -f ~/private ];
then
    source ~/private
fi




# Path
export PYTHONSTARTUP="$HOME/.pythonrc"
export ANDROID_HOME="$HOME/Documents/android-sdks"
export PYS=Library/Python/2.7/bin
export PATH=/Library/Frameworks/UnixImageIO.framework/Programs:$PATH
export PATH=/Library/Frameworks/PROJ.framework/Programs:$PATH
export PATH=/Library/Frameworks/GEOS.framework/Programs:$PATH
export PATH=/Library/Frameworks/SQLite3.framework/Programs:$PATH
export PATH=/Library/Frameworks/GDAL.framework/Programs:$PATH
export PATH="$HOME/Library/Haskell/bin:$PATH:$ANDROID_HOME"
export JAVA_HOME=$(/usr/libexec/java_home)
export DJANGO_AUTO_COMPLETE='True'
export TERM=xterm-256color

########################################
#                                      #
#               minify                 #
#                                      #
########################################
minify () {
    if [ -z "$1" ]; then
	echo "expecting atleast 1 arg."
	return 0
    fi
    
    java -jar ~/.emacs.d/yuicompressor-2.4.8.jar --charset utf8 --type js -o $(basename $1 .js).min.js $1
}


########################################
#                                      #
#             posterlynx               #
#                                      #
########################################
function posterlynx {
    export MAIL_DEFAULT_SENDER='posterlynx <admin@javierachavez.com>'
    export MAIL_SERVER='box884.bluehost.com'
    export MAIL_PORT='465'
    export MAIL_USE_SSL='1'
    export MAIL_USE_TLS='0'

    RED="\033[1; 31m"
    OFF="\033[m"
    if [ $# -eq 0 ]; then
	   echo -e "virtual env ${RED}NOT${OFF} activated. \n\nShould be 'posterlynx e' to activate"
    else
	   source ~/Documents/virtualenvs/qrwebsite/bin/activate
    fi

    cd ~/Documents/posterlynx
}

########################################
#                                      #
#               TC app                 #
#                                      #
########################################
function tcapp {
    export MAIL_DEFAULT_SENDER='tc committee <admin@javierachavez.com>'
    export MAIL_SERVER='box884.bluehost.com'
    export MAIL_PORT='465'
    export MAIL_USE_SSL='1'
    export MAIL_USE_TLS='0'


    RED="\033[1; 31m"
    OFF="\033[m"
    if [ $# -eq 0 ]; then
        echo -e "virtual env ${RED}NOT${OFF} activated. \n\nShould be 'run_tc e' to activate"
    else
        source ~/Documents/virtualenvs/tc-venv/bin/activate
    fi

    cd ~/Documents/TC\ app
    
}

########################################
#                                      #
#       Simple Command prompt          #
#                                      #
########################################

# Show branch in status line 

# PS1='[\W$(__git_ps1 " (%s)")]\$ '
# export PROMPT_COMMAND='echo -ne "\033]0;${PWD/#$HOME/~}\007"'

##end


# git autocompletion in git 2.1.x
if [ -f `brew --prefix git`/etc/bash_completion.d/git-completion.bash ]; then
  . `brew --prefix git`/etc/bash_completion.d/git-completion.bash
fi

if [ -f `brew --prefix git`/etc/bash_completion.d/git-prompt.sh ]; then
  . `brew --prefix git`/etc/bash_completion.d/git-prompt.sh
fi

# bash autocompletion
if [ -f /opt/local/etc/bash_completion ]; then
    . /opt/local/etc/bash_completion
fi



########################################
#                                      #
#       Complex Command prompt         #
#                                      #
########################################
function prompt_command {
    exitstatus="$?"
    BOLD="\[\033[1m\]"
    RED="\[\033[1;31m\]"
    GREEN="\[\e[32;1m\]"
    BLUE="\[\e[34;1m\]"
    PURPLE="\[\e[35;1m\]"
    CYAN="\[\e[36;1m\]"
    OFF="\[\033[m\]"

    time=`date +"%H:%M"`
    

    # Virtual Env
    if [[ $VIRTUAL_ENV != "" ]]
       then
           venv=" ${BOLD}[${VIRTUAL_ENV##*/}]"
    else
       venv=''
    fi
    # git
    branch=`git symbolic-ref HEAD 2> /dev/null | cut -f3 -d/`
    if [ ! -z ${branch} ]; then
      if [ ${branch} == "master" ]; then
        branch=`echo " ${CYAN}${branch}"`
      else
        branch=`echo " ${PURPLE}${branch}"`
      fi
    fi
    changes=`git status -s 2> /dev/null | \
             wc -l | sed -e 's/ *//'`
    if [ ${changes} -eq 0 ]; then
      dirty=""
    else
      dirty="${RED}*${OFF}"
    fi

    prompt="${CYAN}${time}${OFF} ${BLUE}\w${OFF}${PURPLE}${branch}${OFF}${dirty}${venv}"

    if [ ${exitstatus} -eq 0 ]; then
       PS1="${prompt} ${GREEN}\\$ ${OFF}"
    else
       PS1="${prompt} ${RED}\\$ ${OFF}"
    fi

    PS2="${BOLD}>${OFF} "
}

# comment this out if you dont like
PROMPT_COMMAND=prompt_command



########################################
#                                      #
#               Alias                  #
#                                      #
########################################
alias hidden="ls -a | grep '^\.'"
alias unm='ssh javierc@moons.cs.unm.edu'
alias jac='ssh javierac@javierachavez.com'
alias msql-start='mysql.server start'
alias msql-stop='mysql.server stop'
alias fucking='sudo'
alias emacs="/usr/local/Cellar/emacs/HEAD/Emacs.app/Contents/MacOS/Emacs -nw"
alias vi=emacs
alias vim=emacs

#alias pg-start='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
#alias pg-stop='pg_ctl -D /usr/local/var/postgres stop -s -m fast'


[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "/usr/local/rvm/scripts/rvm" # Load RVM into a shell session *as a function*

if which ruby >/dev/null && which gem >/dev/null; then
    PATH="$(ruby -rubygems -e 'puts Gem.user_dir')/bin:$PATH"
fi
