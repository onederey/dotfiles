#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

# -- alias --
alias ls='ls -a --color=auto'
alias grep='grep --color=auto'
alias hyprlandconf='vim ~/.config/hypr/hyprland.conf'
alias zzz='shutdown -h now'
alias dotfiles='code ~/dotfiles && exit'