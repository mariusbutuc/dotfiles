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

# Set CLICOLOR if you want Ansi Colors in iTerm2
CLICOLOR=1

# Set colors to match iTerm2 Terminal Colors
TERM=xterm-256color

TEXT_BOLD="\e[1m"
TEXT_DIM="\e[2m"
TEXT_RESET="\e[0m"

# https://github.com/magicmonty/bash-git-prompt
if [ -f "/usr/local/opt/bash-git-prompt/share/gitprompt.sh" ]; then
  __GIT_PROMPT_DIR="/usr/local/opt/bash-git-prompt/share"
  source "/usr/local/opt/bash-git-prompt/share/gitprompt.sh"
fi

. /usr/local/opt/asdf/asdf.sh

export CDPATH=.:~:~/Code:~/Code/pw
export ERL_AFLAGS="-kernel shell_history enabled"

function ods_content() {
  local filename="${1:?${FUNCNAME[0]} needs a filename}"
  local basename=`basename "$filename" .ods`
  local dirname=`dirname "$filename"`
  unzip -p "$dirname/$basename.ods" content.xml | xmlformat > "$dirname/$basename.xml"
}
