if ! is-macos -o ! -is-executable brew; then
    echo "Skipped: caskroom/versions"
    return
fi

brew tap caskroom/versions

echo "==> Installing apps"

apps=(
    java8
)

for app in "${apps[@]}"; do
    brew cask ls "$app" > /dev/null 2>&1
    if [ $? -ne 0 ]; then
        echo "==> Installing $app"
        brew cask install $app
    else
        echo "==> $app already installed"
        brew cask ls --versions "$app"
    fi
done
