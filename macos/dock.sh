#!/bin/bash

set -e

echo "==> Setting up your dock..." 

dockutil --no-restart --remove all
dockutil --no-restart --add "/Applications/Android Studio.app"
dockutil --no-restart --add "/Applications/Google Chrome.app"
dockutil --no-restart --add "/Applications/iTerm.app"
dockutil --no-restart --add "/Applications/iTunes.app"
dockutil --no-restart --add "/Applications/Slack.app"
dockutil --no-restart --add "/Applications/Visual Studio Code.app"
dockutil --no-restart --add "/Applications/App Store.app"
dockutil --no-restart --add "/Applications/System Preferences.app"
dockutil --no-restart --add "~" --section others

killall Dock
