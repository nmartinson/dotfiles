if ! is-macos -o ! is-executable ruby -o ! is-executable curl -o ! is-executable git; then
    echo "Skipped: missing ruby, curl and/or git"
    return
fi

if test ! $(which brew); then
    echo "Installing brew"
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
    echo "brew is already installed"
fi

brew update

echo "==> ${BOLD}Installing formulae${NORMAL}"

formulae=(
    cocoapods
    diff-so-fancy
    dockutil
    htop
    mongodb
    nvm
    postgresql
    thefuck
    tree
    zsh
    zsh-autosuggestions
    zsh-syntax-highlighting
)

for formula in ${formulae[@]}; do
    brew ls $formula &> /dev/null
    if [ $? -ne 0 ]; then
        echo "Installing $formula"
        brew install $formula
    else
        version=$(brew ls --versions $formula | awk '{print $NF}')
        echo "$formula ($version) is already installed"
    fi
done

# Node Version Manager
NVM_DIR="~/.nvm"
if [ -d $NVM_DIR ]; then
    echo "Directory $NVM_DIR already exists"
else
    echo "Making directory $NVM_DIR"
    mkdir $NVM_DIR
fi

nvm install --lts

unset NVM_DIR

echo ""
