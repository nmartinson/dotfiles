# # Activate zsh completions
# fpath=(/usr/local/share/zsh-completions $fpath)

# # Rebuild zcompdump
# rm -f ~/.zcompdump; compinit

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"
ZSH_THEME="robbyrussell"
# DEFAULT_USER="Alexis"
DEFAULT_USER="$USER"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

# MacOS
plugins=(brew gitignore themes)
# plugins+=(cloudapp osx)

# Build Tools
plugins+=(docker heroku postgres)

# FS Jumping
plugins+=(z)

# iOS
plugins+=(pod)

# Go
# plugins+=(go)

# Node
# plugins+=(node npm)

#Ruby
plugins+=(ruby rails rake)
# plugins+=(bundler gem)

# Misc
plugins+=(zsh-autosuggestions)
plugins+=(zsh-syntax-highlighting)

# Include thefuck

eval $(thefuck --alias)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Finder
alias hideicons="defaults write com.apple.finder CreateDesktop -bool false; killall Finder"
alias showicons="defaults write com.apple.finder CreateDesktop -bool true; killall Finder"

alias hidefiles="defaults write com.apple.finder AppleShowAllFiles -bool false; killall Finder"
alias showfiles="defaults write com.apple.finder AppleShowAllFiles -bool true; killall Finder"

alias legare="open ~/Development/legare-ios/legare.xcworkspace"
alias legare-ios="cd ~/Development/legare-ios/"
alias legare-platform="cd ~/Development/legare-platform/"

alias wayfinder-android="cd ~/Development/wayfinder-android/MyCompass"
alias wayfinder-ios="cd ~/Development/wayfinder-ios/ASLMyCompass"
alias wayfinder-ios-app="open ~/Development/wayfinder-ios/ASLMyCompass"

### PATHS ###
# export GOPATH=$HOME/Development/Go
# export GOBIN=$HOME/Development/Go/bin
# export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin

export ANDROID_HOME="$HOME/Library/Android/sdk"
export PATH="$ANDROID_HOME/tools:$PATH"
export PATH="$ANDROID_HOME/platform-tools:$PATH"
export PATH="$ANDROID_HOME/emulator:$PATH"
