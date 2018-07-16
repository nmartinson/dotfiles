if ! is-macos -o ! -is-executable ruby -o ! is-executable curl -o ! is-executable git; then
    echo "Skipped: Homebrew (missing: ruby, curl and/or git)"
    return
fi

if test ! $(which brew); then
    echo "==> Installing brew"
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
    echo "==> brew is already installed"
fi

brew update

echo "==> Installing formulae"

formulae=(
    cocoapods
    diff-so-fancy
    dockutil
    htop
    mongodb
    node
    postgresql
    ruby
    thefuck
    tree
    zsh
    zsh-autosuggestions
    zsh-syntax-highlighting
)

for formula in "${formulae[@]}"; do
    brew ls "$formula" > /dev/null 2>&1
    if [ $? -ne 0 ]; then
        echo "==> Installing $formula"
        brew install $formula
    else
        echo "==> $formula is already installed"
        brew ls --versions "$formula"
    fi
done
