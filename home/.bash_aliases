# general
alias reload='. ~/.bash_profile'

# git
alias 10='gl -n10 --graph'
alias 20='gl -n20 --graph'
alias 40='gl -n40 --graph'
alias gl='git log --date=short --pretty=format:"%C(124)%ad %C(24)%h %C(34)%an %C(252)%s%C(178)%d" --stat'
alias gsign='git commit -C HEAD -S --amend'
alias gfo='git fetch --prune origin'
alias gfop='gfo && git pull'

# ruby
alias irbs='irb --simple-prompt'
alias bert='bundle exec ruby -Ilib:test '

# rails
alias be='bundle exec '
alias bi='bundle check || bundle install --jobs=4'
alias rc='bin/rails c'
alias rs='bin/rails s -b 0.0.0.0 -p 3000'
alias rr='bundle exec rake routes | grep'

# enable color support of ls and also add handy aliases
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias ggrep='ggrep --color=auto'

alias ls='ls --color=auto'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
