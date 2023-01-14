#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# set up node version manager
source /usr/share/nvm/init-nvm.sh

alias ls='ls --color=auto'
user_color='\[\033[38;5;39m\]'
dir_color='\[$(tput bold)\]\[\033[38;5;6m\]'
git_color='\[\033[38;5;202m\]'

GIT_BRANCH()
{
	echo $(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/-(\1)/')
}

PS1="$user_color\u\[$(tput sgr0)\]@\h:$dir_color[\W]$git_color\$(GIT_BRANCH)\[$(tput sgr0)\]\$ "
