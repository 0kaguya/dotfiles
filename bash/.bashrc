#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'

PS1='[\t] \e[1;32m\u@\h\e[m:\e[1;34m\w\e[m \$ '
PS2='[\t]  >> '

# invoke nix
if [ -e $HOME/.nix-profile/etc/profile.d/nix.sh ]
then
    . $HOME/.nix-profile/etc/profile.d/nix.sh
fi

# set proxy
host_ip=$(awk '/nameserver/ { print $2 }' /etc/resolv.conf)
port_number='7890'
export https_proxy="socks5h://$host_ip:$port_number"

