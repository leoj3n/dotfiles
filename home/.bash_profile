export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

#
# https://makandracards.com/makandra/524-show-the-current-git-branch-on-your-bash-prompt
#

export PS1='\[\033[01;32m\]\h\[\033[01;34m\] \w\[\033[31m\]$(__git_ps1 "(%s)") \[\033[01;34m\]$\[\033[00m\] '

#############################################################
# Aliases
#############################################################

alias ss="open /System/Library/Frameworks/ScreenSaver.framework/Versions/A/Resources/ScreenSaverEngine.app"
alias ..='cd ..'
alias ...='cd ../..'
alias -- -='cd -'

#
# IP addresses
#

alias wanip="dig +short myip.opendns.com @resolver1.opendns.com"
alias whois="whois -h whois-servers.net"

#
# Flush Directory Service cache
#

alias flush="dscacheutil -flushcache"

#
# View HTTP traffic
#

alias httpdump="sudo tcpdump -i en1 -n -s 0 -w - | grep -a -o -E \"Host\: .*|GET \/.*\""

#
# Trim new lines and copy to clipboard
#

alias c="tr -d '\n' | pbcopy"

#############################################################
# Eval
#############################################################

eval "$(hub alias -s)"

#############################################################
# Source
#############################################################

#
# Load RVM into a shell session *as a function*
#

source "$HOME/.rvm/scripts/rvm"


