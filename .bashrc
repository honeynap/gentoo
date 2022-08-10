# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !


# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi


# Put your fun stuff here.

set -o vi

#command shortcuts

alias vim='nvim'
alias v='nvim'
alias c='sudo make clean install'
alias off='sudo poweroff'
alias reboot='sudo reboot'
#alias t='export TERM=xterm'

#vim shortcuts

alias brc='nvim ~/.bashrc'
alias stc='nvim ~/.local/src/st/config.h'
alias dwmc='nvim ~/.local/src/dwm/config.h'
alias slstatusc='nvim ~/.local/src/slstatus/config.h'
alias dmenuc='nvim ~/.local/src/dmenu/config.h'
alias ec='nvim config.h'

#cd

alias cdsalle='cd ~/Documents/Salle/'
alias cdst='cd ~/.local/src/st/'
alias cdslstatus='cd ~/.local/src/slstatus/'
alias cddwm='cd ~/.local/src/dwm/'

#portage shortcut

alias s='emerge --search'
alias e='sudo emerge --ask'

#gentoo toolkit

alias u='equery u'
alias d='equery depends'
alias f='equery files'
alias b='equery belongs'

#inc/dec volume

alias vi='pactl -- set-sink-volume 0 +10%'
alias vd='pactl -- set-sink-volume 0 -10%'
alias vm='pactl -- set-sink-volume 0 -100%' #mute volume
alias v50='pactl -- set-sink-volume 0 50%' #sets volume to 50%

#set display brightness

#max brightness 7500 
#cat /sys/class/backlight/intel_backlight/max_brightness
#echo 7500 > /sys/class/backlight/intel_backlight/brightness

alias b100='echo 7500 | sudo tee /sys/class/backlight/intel_backlight/brightness'
alias b90='echo 6750 | sudo tee /sys/class/backlight/intel_backlight/brightness'
alias b80='echo 6000 | sudo tee /sys/class/backlight/intel_backlight/brightness'
alias b70='echo 5250 | sudo tee /sys/class/backlight/intel_backlight/brightness'
alias b60='echo 4500 | sudo tee /sys/class/backlight/intel_backlight/brightness'
alias b50='echo 3750 | sudo tee /sys/class/backlight/intel_backlight/brightness'
alias b40='echo 3000 | sudo tee /sys/class/backlight/intel_backlight/brightness'
alias b30='echo 2250 | sudo tee /sys/class/backlight/intel_backlight/brightness'
alias b20='echo 1500 | sudo tee /sys/class/backlight/intel_backlight/brightness'
alias b10='echo 750 | sudo tee /sys/class/backlight/intel_backlight/brightness'
