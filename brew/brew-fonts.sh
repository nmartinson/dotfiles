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

for font in "${fonts[@]}"; do
    brew cask ls "$font" &> /dev/null
    if [ $? -ne 0 ]; then
        echo "Installing $font"
        brew cask install $font
    else
        version=$(brew cask ls --versions "$font" | awk '{print $NF}')
        echo "$font $version is already installed"
    fi
done
