if ! is-macos -o ! -is-executable brew; then
    echo "Skipped: caskroom/fonts"
    return
fi

brew tap caskroom/fonts

echo "==> Installing fonts"

fonts=(
    font-droid-sans-mono-for-powerline
    font-source-code-pro
)

for fonts in "${fonts[@]}"; do
    brew cask ls "$fonts" > /dev/null 2>&1
    if [ $? -ne 0 ]; then
        echo "==> Installing $fonts"
        brew cask install $fonts
    else
        echo "==> $fonts already installed"
        brew cask ls --versions "$fonts"
    fi
done
