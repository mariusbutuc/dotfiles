# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# append to the history file, don't overwrite it
shopt -s histappend

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth:erasedups

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# Enable programmable completion features
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

##------------------------------------------------------------------------------

export PATH=/usr/local/sbin:$PATH

# Custom Prompt
PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '

. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash
