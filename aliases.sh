alias ..="cd .."
alias ...="cd .. ; cd .."

alias ls="ls -G" # list
alias la="ls -Ga" # list all, includes dot files
alias ll="ls -Gl" # long list, excludes dot files
alias lla="ls -Gla" # long list all, includes dot files

alias stfu="osascript -e 'set volume output muted true'"
alias pumpitup="sudo osascript -e 'set volume 10'"

alias dc="docker-compose"
alias dockersocat="socat -d -d TCP-L:8099,fork UNIX:/var/run/docker.sock"

# Get readable list of network IPs
alias ips="ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ && print $1'"
alias myip="dig +short myip.opendns.com @resolver1.opendns.com"
alias flush="dscacheutil -flushcache" # Flush DNS cache

alias gzip="gzip -9n" # set strongest compression level as ‘default’ for gzip
alias ping="ping -c 5" # ping 5 times ‘by default’
alias ql="qlmanage -p 2>/dev/null" # preview a file using QuickLook
alias git-clean="git branch --merged | grep -v \"\*\" | xargs -n 1 git branch -d"

alias chrome="open -a Google\ Chrome --args --disable-web-security --user-data-dir"

pman () {
    man -t "${1}" | open -f -a /Applications/Preview.app
}

function checkport {
 PORT=$1
 sudo lsof -iTCP:$PORT -sTCP:LISTEN
}

alias wget="curl -O --retry 999 --retry-max-time 0 -C -"
alias purgeallbuilds='rm -rf ~/Library/Developer/Xcode/DerivedData/*'
alias weather="~/.dotfiles/weather.sh"
alias ahoy="cd ~/Developer/Ahoy/"
alias dockerclean='eval $(docker-machine env -u) && docker stop $(docker ps -a -q) && docker rm $(docker ps -a -q)'
alias sudo='sudo '

