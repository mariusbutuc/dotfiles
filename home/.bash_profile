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

# http://www.gnu.org/software/bash/manual/html_node/Bash-Variables.html#index-HISTTIMEFORMAT
HISTTIMEFORMAT="%F %T "

# Set CLICOLOR if you want Ansi Colors in iTerm2
CLICOLOR=1

# Set colors to match iTerm2 Terminal Colors
TERM=xterm-256color

TEXT_BOLD="\e[1m"
TEXT_DIM="\e[2m"
TEXT_RESET="\e[0m"

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# Enable programmable completion features
#   installed to: /usr/local/etc/bash_completion.d
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

# https://github.com/magicmonty/bash-git-prompt
if [ -f "/usr/local/opt/bash-git-prompt/share/gitprompt.sh" ]; then
  __GIT_PROMPT_DIR="/usr/local/opt/bash-git-prompt/share"
  source "/usr/local/opt/bash-git-prompt/share/gitprompt.sh"
fi

. /usr/local/opt/asdf/asdf.sh
. /usr/local/opt/asdf/etc/bash_completion.d/asdf.bash

export CDPATH=.:~:~/Code:~/Code/pw

export ERL_AFLAGS="-kernel shell_history enabled"
export KERL_CONFIGURE_OPTIONS="--with-ssl=$(brew --prefix openssl)"

# $ mix help ecto.gen.migration
# This generator will automatically open the generated file if you have
# ECTO_EDITOR set in your environment variable.
export ECTO_EDITOR=subl

function ods_content() {
  local filename="${1:?${FUNCNAME[0]} needs a filename}"
  local basename=`basename "$filename" .ods`
  local dirname=`dirname "$filename"`
  unzip -p "$dirname/$basename.ods" content.xml | xmlformat > "$dirname/$basename.xml"
}

# Update PATH for the Google Cloud SDK.
if [ -f '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.bash.inc' ]; then
  . '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.bash.inc'
fi

# Enable shell command completion for gcloud.
if [ -f '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.bash.inc' ]; then
  . '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.bash.inc'
fi

# Bypass the gettext shim added by asdf when installing python anaconda3-5.3.0
export PATH="/usr/local/opt/gettext/bin:$PATH"
