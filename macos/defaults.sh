
# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `macos` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

###############################################################################
# Finder
###############################################################################

# Hide the ~/Library folder.
chflags hidden ~/Library

# Set the Finder prefs for showing a few different volumes on the Desktop.
# defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
# defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true

# Always open everything in Finder's column view. This is important.
# defaults write com.apple.Finder FXPreferredViewStyle Nlsv

# Show hidden files and file extensions by default
defaults write com.apple.finder AppleShowAllFiles -bool false
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Disable the warning when changing file extensions
# defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# Allow text-selection in Quick Look
# defaults write com.apple.finder QLEnableTextSelection -bool true

# Disable the warning before emptying the Trash
defaults write com.apple.finder WarnOnEmptyTrash -bool true

# Enable auto-correct
# defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool true

# Disable the “Are you sure you want to open this application?” dialog
# defaults write com.apple.LaunchServices LSQuarantine -bool false

# Expand print panel by default
# defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true

# Expand save panel by default
# defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true

# Disable Resume system-wide
# defaults write com.apple.systempreferences NSQuitAlwaysKeepsWindows -bool false

# Disable the crash reporter
# defaults write com.apple.CrashReporter DialogType -string "none"

# Show path bar
defaults write com.apple.finder ShowPathbar -bool true

###############################################################################
# Do some clean up work.
###############################################################################

apps=(
	# Activity Monitor
	# Address Book
	# Calendar
	# cfprefsd
	# Contacts
	# Dock
	Finder
	# iCal
	# Mail
	# Messages
	# Safari
	# SystemUIServer
	# Terminal
	# Twitter
)

for app in "${apps[@]}"; do
	killall "${app}" > /dev/null 2>&1
done
