# If not running interactively, don't do anything

[ -z "$PS1" ] && return

eval $(thefuck --alias)

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
