
export EDITOR='vim';
export LESS="QMcdR";
export MORE="-c";
export PAGER=less;

# bash_history configuration
shopt -s histappend
export HISTFILE="$HOME/.bash_history"
export HISTTIMEFORMAT="%F %T: " # 33916  2017-12-30 17:12:20 echo foo
export HISTCONTROL=ignoreboth
export HISTIGNORE="ls:bg:fg:clear:history"
export HISTSIZE=1000000 # 10^6
export HISTFILESIZE=$HISTSIZE 
# make multi-line commands as one-line command in $HISTFILE
shopt -s cmdhist

# append to history file right a command is executed
export PROMPT_COMMAND="history -a;$PROMPT_COMMAND"

# Prefer US English and use UTF-8
export LANG='en_US.UTF-8'
export LC_ALL='en_US.UTF-8'

# Highlight section titles in man page
export LESS_TERMCAP_md="${yellow}";

# Don't clear the screen after quiting a man page
export MANPAGER='less -X'

# update the values of LINES and COLUMNS after each command
shopt -s checkwinsize

# auto-correct typo in path when using 'cd'
shopt -s cdspell

# enable extended globbing
# ?(pattern-list)   Matches zero or one occurrence of the given patterns
# *(pattern-list)   Matches zero or more occurrences of the given patterns
# +(pattern-list)   Matches one or more occurrences of the given patterns
# @(pattern-list)   Matches one of the given patterns
# !(pattern-list)   Matches anything except one of the given patterns
shopt -s extglob

# enable bash_completion
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi
