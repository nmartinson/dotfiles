# If not running interactively, don't do anything

[ -z "$PS1" ] && return

# Finally we can source the dotfiles (order matters)

if is-macos; then
    for DOTFILE in "$DOTFILES_DIR"/system/.{env,alias,function}.macos; do
        [ -f "$DOTFILE" ] && . "$DOTFILE"
    done
fi

eval $(thefuck --alias)
