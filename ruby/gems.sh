if ! is-executable ruby; then
    echo "Skipped: missing ruby"
    return
fi

echo "==> Installing gems"

gems=(
    pivotal_git_scripts
)

for gem in "${gems[@]}"; do
    gem list -i "$gem" &> /dev/null
    if [ $? -ne 0 ]; then
        echo "Installing $gem"
        gem install $gem
    else
        version=$(gem list | grep pivotal_git_scripts | awk '{print $2}' | sed 's/[()]//g')
        echo "$gem ($version) is already installed"
    fi
done
