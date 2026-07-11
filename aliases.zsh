# Git
alias gp='git pull'
alias gr='git rebase'
alias gpsh='git push'
alias gpshf='gpsh -f'
alias gpshb='gpsh origin $(git rev-parse --abbrev-ref HEAD)'
alias gpshnb='gpsh --set-upstream origin $(git rev-parse --abbrev-ref HEAD) && $(echo $BROWSER) https://github.com/$(gpn)/pull/new/$(git rev-parse --abbrev-ref HEAD)'
alias gs='git status'
alias gch='git checkout'
alias gchm='gch main && gp'
alias gl='git log --color --graph --pretty=format:'\''%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)%C(bold blue)<%an>%Creset'\'' --abbrev-commit'
alias ga='git add'
alias gd='git diff'
alias gdt='git difftool -y'
alias gc='git commit'
# alias gcam='git commit -am'
alias gb='git branch'

# $1 - commit message
gacm () {
    ga -A && gc -m "$1"
}

# $1 - commit message
gacmpshb () {
    gacm "$1" && gpshb
}

# $1 - commit message
gacmpshnb () {
    gacm "$1" && gpshnb
}

# Docker
#alias dockerStopAll="docker stop $(docker ps -a -q)";
#alias dockerRmAll="docker rm $(docker ps -a -q)";
#alias dockerRmVolumes="docker volume rm $(docker volume ls -q -f dangling=true)";
#alias dockerRmDanglingImages="docker rmi $(docker images -aq --filter dangling=true)";
#alias dockerCleanUp="dockerStopAll; dockerRmAll; dockerRmVolumes; dockerRmDanglingImages; docker network prune";

# Docker compose
alias dc='docker-compose'
alias dcp='docker-compose pull'
alias dcps='docker-compose ps'
alias dcu='docker-compose up'
alias dcs='docker-compose stop'
alias dcd='docker-compose down'

# FS
mkdirc() {
 mkdir "$1" && cd "$1" 
}
