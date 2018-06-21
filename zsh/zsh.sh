# Change user's default shell

case $SHELL in
    */zsh)
        echo "==> zsh is already the default shell"
        ;;
    */bash)
        echo "==> Set zsh as default shell"
        sudo dscl . -create /Users/$USER UserShell /usr/local/bin/zsh
        ;;
    *)
        ;;
esac
