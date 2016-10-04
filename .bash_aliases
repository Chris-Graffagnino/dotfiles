# .bash_aliases

alias ll='ls -l'
alias l='ls'
alias npmbusted='fab install_npm_packages'

# git
alias gpum="git pull upstream master"
alias gpo="git push origin"
alias gcom="git checkout master"
alias gco="git checkout"
alias gst="git status"
alias gad="git add"
alias gc="git commit"
alias gcm="git commit -m"
alias gmm="git merge master"

# simpler find...thank you Bill Israel @epochblue
f() { find . -iname "*$1*"; }
