# color settings
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'


        RED="\[\033[0;31m\]"
     YELLOW="\[\033[0;33m\]"
      GREEN="\[\033[0;32m\]"
       BLUE="\[\033[0;34m\]"
          C="\[\033[1;34m\]"
  LIGHT_RED="\[\033[1;31m\]"
LIGHT_GREEN="\[\033[1;32m\]"
      WHITE="\[\033[1;37m\]"
 LIGHT_GRAY="\[\033[0;37m\]"
      BLOCK="\[\033[00m\]"
 COLOR_NONE="\[\e[0m\]"


# useful git branch display
parse_git_branch(){
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="${LIGHT_GREEN}\u@\h${BLOCK}:${C}\w${GREEN}\$(parse_git_branch)${BLOCK}\$"

# basic path settings
export PATH=$PATH:/usr/local/mysql/bin/

# history with timestamp
export HISTTIMEFORMAT="%F %T "

# useful short key
alias ll="ls -alF"
alias gl="git log"
alias gs="git status"
alias gp="git add -p"
alias gt="git commit"
alias gd="git diff"
alias gh="git checkout"
alias ghelp='echo "
gl = git log
gs = git status
gp = git add -p
gt = git commit
gd = git diff
gh = git checkout
"'

# virtualenv wrapper settings
export WORKON_HOME=$HOME/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh

# pyenv settings
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
export PYENV_VIRTUALENVWRAPPER_PREFER_PYVENV="true"
