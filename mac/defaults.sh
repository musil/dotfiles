#!/bin/zsh

# Screen Caputer definitions
mkdir ~/Desktop/screenshots
defaults write com.apple.screencapture location ~/Desktop/screenshots
defaults write com.apple.screencapture name "screenshot" 
defaults write com.apple.screencapture name png


# Show download history even if you clear your browser history and cache.
sqlite3 ~/Library/Preferences/com.apple.LaunchServices.QuarantineEventsV* 'select LSQuarantineDataURLString from LSQuarantineEvent'

# Delete all download history
sqlite3 ~/Library/Preferences/com.apple.LaunchServices.QuarantineEventsV* 'delete from LSQuarantineEvent'