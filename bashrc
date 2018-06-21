# imports
if [ -f ~/.work_bash ];
then
    source ~/.work_bash
fi

if [ -f ~/.bash_private ];
then
    source ~/.bash_private
fi




########################################
#                                      #
#               Exports                #
#                                      #
########################################


# export ANDROID_HOME="$HOME/Documents/android-sdks"
# export PATH="$HOME/Documents/jME3-sdk"
# export PATH="${HOME}/.cabal/bin:${GHC_DOT_APP}/Contents/bin:${PATH}"




########################################
#                                      #
#          Autocomplete git            #
#                                      #
########################################
# if [ -f /usr/local/etc/bash_completion.d/git-completion.bash ]; then
#     . /usr/local/etc/bash_completion.d/git-completion.bash
# fi


########################################
#                                      #
#       Simple Command prompt          #
#                                      #
########################################

# Show branch in status line

# PS1='[\W$(__git_ps1 " (%s)")]\$ '
# export PROMPT_COMMAND='echo -ne "\033]0;${PWD/#$HOME/~}\007"'

##end



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

    prompt="${CYAN}(\h)${time}${OFF} ${BLUE}\w${OFF}${PURPLE}${branch}${OFF}${dirty}${venv}"

    if [ ${exitstatus} -eq 0 ]; then
       PS1="${prompt} ${GREEN}\\$ ${OFF}"
    else
       PS1="${prompt} ${RED}\\$ ${OFF}"
    fi

    PS2="${BOLD}>${OFF} "
}

# comment this out if you dont like
PROMPT_COMMAND="prompt_command; $PROMPT_COMMAND"

# start tmux on every login
# if command -v tmux>/dev/null; then
#   [[ ! $TERM =~ screen ]] && [ -z $TMUX ] && exec tmux
# fi


########################################
#                                      #
#               Delete                 #
#                                      #
########################################
delete () {
    if [ -f $1 ] ; then
        shred -vzun 3 $1
    else
        echo "'$1' is not a valid file"
    fi
}


########################################
#                                      #
#               Alias                  #
#                                      #
########################################
alias hidden="ls -a | grep '^\.'"
alias unm='ssh javierc@moons.cs.unm.edu'
alias fucking='sudo'
alias simpleserver="python -m SimpleHTTPServer 8081"
#alias pg-start='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
#alias pg-stop='pg_ctl -D /usr/local/var/postgres stop -s -m fast'