#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'

# load git completion
if [ -e /usr/share/git/completion/git-completion.bash ]
then
    . /usr/share/git/completion/git-completion.bash
fi

# load git prompt
if [ -e /usr/share/git/completion/git-prompt.sh ]
then
    . /usr/share/git/completion/git-prompt.sh
fi
GIT_PS1_SHOWDIRTYSTATE=1
git_prompt='\[$(__git_ps1 "(%s) ")\]'

# assemble prompt
time='\[[\t]\]'
user_host='\[\e[1;32m\u@\h\e[m\]' # '\e[1;32m ... \e[m' set a color of color code (1,32).
whereiam='\[\e[1;34m\w\e[m\]'
git_prompt=$git_prompt
prompt='\[\e[0;33m\$\e[m\]'
PS1="$time $user_host:$whereiam $git_prompt$prompt "
PS2="$time >>> "

# invoke nix
if [ -e $HOME/.nix-profile/etc/profile.d/nix.sh ]
then
    . $HOME/.nix-profile/etc/profile.d/nix.sh
fi

# set proxy
host_ip=$(awk '/nameserver/ { print $2 }' /etc/resolv.conf)
port_number='7890'
export https_proxy="socks5h://$host_ip:$port_number"

