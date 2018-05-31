if ! is-macos -o ! -is-executable brew; then
    echo "Skipped: Homebrew-Cask"
    return
fi

brew cask > /dev/null 2>&1
if [ $? -ne 0 ]; then
    echo "==> Installing brew cask"
    brew tap homebrew/cask
else
    echo "==> brew cask is already installed"
fi

echo "==> Installing apps"

apps=(
    alfred
    android-studio
    firefox
    google-chrome
    iterm2
    postman
    slack
    teamviewer
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

