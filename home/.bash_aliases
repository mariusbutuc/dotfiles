# general
alias reload='. ~/.bashrc'

# git
alias 10='gl -n10 --graph'
alias 20='gl -n20 --graph'
alias 40='gl -n40 --graph'
alias gl='git log --date=short --pretty=format:"%C(124)%ad %C(24)%h %C(34)%an %C(252)%s%C(178)%d" --stat'
alias gsign='git commit -C HEAD -S --amend'

# ruby
alias irbs='irb --simple-prompt'
alias bert='bundle exec ruby -Ilib:test '

# rails
alias be='bundle exec '
alias bi='bundle check || bundle install --jobs=4'
alias rc='bin/rails c'
alias rs='bin/rails s -b 0.0.0.0'
alias rr='bundle exec rake routes | grep'

# vagrant dev box

alias update_vagrant='cd ~/src/vagrant/ && git pull origin master && vagrant up --provision'
alias vs='cd ~/src/vagrant/ && vagrant ssh'
