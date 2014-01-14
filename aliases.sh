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