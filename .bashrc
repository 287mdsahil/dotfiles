#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

# Git completion
. /usr/share/git/completion/git-completion.bash

# Git status in bash
. /usr/share/git/completion/git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1

# Color variables
white=$(tput setaf 15)
red=$(tput setaf 9)
seagreen2=$(tput setaf 83)
fuchsia=$(tput setaf 13)
blue=$(tput setaf 12)
yellow=$(tput setaf 11)
aqua=$(tput setaf 14)
grey=$(tput setaf 247)
bold=$(tput bold)
resetColor=$(tput sgr0)

# Default prompt
#PS1='[\u@\h \W]\$\n'

# Colored custom prompt
PS1='\[${bold}${red}\]\u '			# username
PS1+='\[${white}\]at '
PS1+='\[${seagreen2}\]\h '			# hostname
PS1+='\[${white}\]in '
PS1+='\[${aqua}\]\w '				# working directory
PS1+='\[${grey}$(__git_ps1 "(%s)")\]' 		# git prompt
PS1+='\n'					# new line
PS1+='\[${blue}${bold}\]\$ \[${resetColor}\]'

export PS1

# Alias for managing dot files
alias config='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'

# Executing the neofetch command
neofetch
