export PATH=/usr/local/sbin:$PATH

# Custom Prompt
PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '

# git
if [ -f ~/.git-completion.bash ]; then
  source ~/.git-completion.bash
fi

# git-prompt
if [ -f ~/.git-prompt.bash ]; then
  source ~/.git-prompt.bash
fi

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
