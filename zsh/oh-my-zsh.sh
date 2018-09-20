ls ~/.oh-my-zsh &> /dev/null
if [ $? -ne 0 ]; then
    echo "==> Installing oh my zsh"
    0>/dev/null sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
else
    echo "==> oh my zsh is already installed"
fi
