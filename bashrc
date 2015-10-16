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


export PYTHONSTARTUP="$HOME/.pythonrc"
export PYLINTRC="$HOME/.pylintrc"
export ANDROID_HOME="$HOME/Documents/android-sdks"
# export PATH="$HOME/Documents/jME3-sdk"
export PATH=/Library/Frameworks/UnixImageIO.framework/Programs:$PATH
export PATH=/Library/Frameworks/PROJ.framework/Programs:$PATH
export PATH=/Library/Frameworks/GEOS.framework/Programs:$PATH
export PATH=/Library/Frameworks/SQLite3.framework/Programs:$PATH
export PATH=/Library/Frameworks/GDAL.framework/Programs:$PATH
export PATH="$HOME/Library/Haskell/bin:$PATH:$ANDROID_HOME"
export JAVA_HOME=$(/usr/libexec/java_home)
export TERM=xterm-256color
# export PATH="${HOME}/.cabal/bin:${GHC_DOT_APP}/Contents/bin:${PATH}"



########################################
#                                      #
#    Autocomplete - python & django    #
#                                      #
########################################
# Django
# _django_completion()
# {
#     COMPREPLY=( $( COMP_WORDS="${COMP_WORDS[*]}" \
#                    COMP_CWORD=$COMP_CWORD \
#                    DJANGO_AUTO_COMPLETE=1 $1 ) )
# }
# complete -F _django_completion -o default django-admin.py manage.py django-admin

# _python_django_completion()
# {
#     if [[ ${COMP_CWORD} -ge 2 ]]; then
#         PYTHON_EXE=${COMP_WORDS[0]##*/}
#         echo $PYTHON_EXE | egrep "python([2-9]\.[0-9])?" >/dev/null 2>&1
#         if [[ $? == 0 ]]; then
#             PYTHON_SCRIPT=${COMP_WORDS[1]##*/}
#             echo $PYTHON_SCRIPT | egrep "manage\.py|django-admin(\.py)?" >/dev/null 2>&1
#             if [[ $? == 0 ]]; then
#                 COMPREPLY=( $( COMP_WORDS="${COMP_WORDS[*]:1}" \
#                                COMP_CWORD=$(( COMP_CWORD-1 )) \
#                                DJANGO_AUTO_COMPLETE=1 ${COMP_WORDS[*]} ) )
#             fi
#         fi
#     fi
# }

# # Support for multiple interpreters.
# unset pythons
# if command -v whereis &>/dev/null; then
#     python_interpreters=$(whereis python | cut -d " " -f 2-)
#     for python in $python_interpreters; do
#         pythons="${pythons} ${python##*/}"
#     done
#     pythons=$(echo $pythons | tr " " "\n" | sort -u | tr "\n" " ")
# else
#     pythons=python
# fi

# complete -F _python_django_completion -o default $pythons
# end django




########################################
#                                      #
#          Autocomplete git            #
#                                      #
########################################
if [ -f /usr/local/etc/bash_completion.d/git-completion.bash ]; then
    . /usr/local/etc/bash_completion.d/git-completion.bash
fi


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
alias melpa-install="python .melpa-install"
alias simpleserver="python -m SimpleHTTPServer 8081"
#alias pg-start='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
#alias pg-stop='pg_ctl -D /usr/local/var/postgres stop -s -m fast'


########################################
#                                      #
#                 Ruby                 #
#                                      #
########################################
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"


export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
