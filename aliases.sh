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



alias chrome="open -a Google\ Chrome --args --disable-web-security"
alias tw='open -a /Applications/TextWrangler.app'

alias invsass="cd  /Users/bartg/Developer/Work/inventorum.ios.native/www/resources/sass/"
alias sassc="compass compile"
alias inv="cd  /Users/bartg/Developer/Work/inventorum.ios.native/www/"
alias invshop="cd  /Users/bartg/Developer/Work/InventorumWebShop/"


eval "$(hub alias -s)"

pman () {
    man -t "${1}" | open -f -a /Applications/Preview.app
}


export SENCHA_CMD_3_0_0="/Users/bartg/Developer/Work/inventorum.ios.native/www/parts/sencha/Sencha/Cmd/3.1.2.342"

export PS1="\[\e[1m\]________________________________________________________________________________\n\[\e[1;30;47m\]| \W @ \h (\u) \n| => \[\e[0m\]"






PEBBLE_SDK_HOME=$HOME/pebble/pebble-sdk
PEBBLE_TOOLCHAIN_HOME=$HOME/pebble/arm-cs-tools
PEBBLE_SDK=$PEBBLE_SDK_HOME/sdk
PATH=$PEBBLE_SDK:$PEBBLE_SDK_HOME/tools:$PEBBLE_TOOLCHAIN_HOME/bin:$PATH
alias create_pebble_project="create_pebble_project.py $PEBBLE_SDK"
alias update_pebble_project="create_pebbble_project.py --symlink-only $PEBBLE_SDK"