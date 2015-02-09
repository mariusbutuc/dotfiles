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

# git alias
alias gl='git log --date=short --pretty=format:"%C(124)%ad %C(24)%h %C(34)%an %C(252)%s%C(178)%d" --stat'
alias gsign='git commit -C HEAD -S --amend'
