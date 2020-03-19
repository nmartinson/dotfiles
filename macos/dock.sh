#!/bin/bash

echo "==> Setting up your dock..." 

dockutil --no-restart --remove all
dockutil --no-restart --add "/Applications/Android Studio.app"
# dockutil --no-restart --add "/Applications/Safari.app"
dockutil --no-restart --add "/Applications/Google Chrome.app"
dockutil --no-restart --add "/Applications/Android Messages.app"
dockutil --no-restart --add "/Applications/Adobe Lightroom Classic.app"
dockutil --no-restart --add "/Applications/iTerm.app"
dockutil --no-restart --add "/Applications/Visual Studio Code.app"
dockutil --no-restart --add "/Applications/App Store.app"
dockutil --no-restart --add "/Applications/System Preferences.app"
#dockutil --no-restart --add "~" --section others

killall Dock
