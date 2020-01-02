# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=100000
setopt appendhistory autocd beep nomatch notify
unsetopt extendedglob
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/kaguya/.zshrc'
autoload -Uz compinit
compinit
# End of lines added by compinstall
autoload -Uz promptinit
promptinit
# aliases.
. $HOME/.zsh_alias
