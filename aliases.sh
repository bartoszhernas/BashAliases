alias ..="cd .."
alias ...="cd .. ; cd .."

alias ls="ls -G" # list
alias la="ls -Ga" # list all, includes dot files
alias ll="ls -Gl" # long list, excludes dot files
alias lla="ls -Gla" # long list all, includes dot files

alias stfu="osascript -e 'set volume output muted true'"
alias pumpitup="sudo osascript -e 'set volume 10'"

# Get readable list of network IPs
alias ips="ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ && print $1'"
alias myip="dig +short myip.opendns.com @resolver1.opendns.com"
alias flush="dscacheutil -flushcache" # Flush DNS cache

alias gzip="gzip -9n" # set strongest compression level as ‘default’ for gzip
alias ping="ping -c 5" # ping 5 times ‘by default’
alias ql="qlmanage -p 2>/dev/null" # preview a file using QuickLook
alias git-clean="git branch --merged | grep -v \"\*\" | xargs -n 1 git branch -d"

alias presstydir="cd ~/Developer/Pressty/"

alias chrome="open -a Google\ Chrome --args --disable-web-security"
alias tw='open -a /Applications/TextWrangler.app'

alias invsass="cd  /Users/bartg/Developer/Work/inventorum.ios.native/www/resources/sass/"
alias sassc="compass compile"
alias inv="cd  /Users/bartg/Developer/Work/inventorum.ios.native/www/"

export GOPATH=$HOME/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
export DOCKER_TLS_VERIFY=1
export DOCKER_HOST=tcp://192.168.59.103:2376
export DOCKER_CERT_PATH=/Users/bartg/.boot2docker/certs/boot2docker-vm


pman () {
    man -t "${1}" | open -f -a /Applications/Preview.app
}


export SENCHA_CMD_3_0_0="/Users/bartg/Developer/Work/inventorum.ios.native/www/parts/sencha/Sencha/Cmd/3.1.2.342"


export MAKEOPTS="-j9"

export PATH=/opt/local/lib/postgresql92/bin:$PATH
export PATH=/Users/bartg/pebble-dev/PebbleSDK-current/bin:$PATH

export PATH=$PATH:/usr/local/cuda/bin
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/cuda/lib

export PATH=/Users/bartg/Qt/5.3/clang_64/bin/:$PATH
export C_INCLUDE_PATH="/opt/local/include"
export LIBRARY_PATH="/opt/local/lib"
export PATH=/opt/local/bin:$PATH


eval "$(hub alias -s)"

alias swift='/Applications/Xcode6-Beta.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/swift'

function checkport {
 PORT=$1
 sudo lsof -iTCP:$PORT -sTCP:LISTEN
}

