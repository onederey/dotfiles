#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# -- base --
alias ls='ls -a --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

# -- alias --
alias hyprlandconf='vim ~/.config/hypr/hyprland.conf'
alias zzz='shutdown -h now'

