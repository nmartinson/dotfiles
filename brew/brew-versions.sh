if ! is-macos -o ! is-executable brew; then
    echo "Skipped: homebrew/cask-versions"
    return
fi

brew tap | grep "homebrew/cask-versions$" &> /dev/null
if [ $? -ne 0 ]; then
    echo "Installing homebrew/cask-versions"
    brew tap homebrew/cask-versions
else
    echo "homebrew/cask-versions is already installed"
fi

echo "==> ${BOLD}Installing apps${NORMAL}"

apps=(
    java8
)

for app in ${apps[@]}; do
    brew cask ls $app &> /dev/null
    if [ $? -ne 0 ]; then
        echo "Installing $app"
        brew cask install $app
    else
        version=$(brew cask ls --versions $app | awk '{print $NF}')
        echo "$app ($version) is already installed"
    fi
done

echo ""
