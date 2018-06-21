if ! is-macos -o ! -is-executable brew; then
    echo "Skipped: homebrew/cask"
    return
fi

brew cask > /dev/null 2>&1
if [ $? -ne 0 ]; then
    echo "==> Installing homebrew/cask"
    brew tap homebrew/cask
else
    echo "==> homebrew/cask is already installed"
fi

echo "==> Installing apps"

apps=(
    1password
    alfred
    android-studio
    dash
    firefox
    google-chrome
    google-backup-and-sync
    iterm2
    postman
    slack
    teamviewer
    transmission
    visual-studio-code
    vlc
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
