##
## macOS
##

# Init Message
# --
echo ""
printf "\e[96m"
echo "--"
echo ""
echo "Starting macOS script"
echo ""
echo "--"
echo ""
printf "\e[0m"

# System Preferences
# --

# kill an open system preferences window
osascript -e 'tell application "System Preferences" to quit'

# dark mode
osascript -e 'tell app "System Events" to tell appearance preferences to set dark mode to true'

# wallpapers - if dir doesn't exist, make it
mkdir -p ~/Pictures/Wallpapers

# wallpaper - copy from repo to folder
cp ./forest_trees_nature_landscape_tree_autumn_5120x2880.jpg ~/Pictures/Wallpapers/bg.jpg

# wallpaper - set it
osascript -e 'tell application "Finder" to set desktop picture to POSIX file "/Users/sam/Pictures/Wallpapers/bg.jpg"'

# Expand save panel by default
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 -bool true

# Expand print panel by default
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint2 -bool true

# Disable “natural” scrolling
defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false

# Restart automatically if the computer freezes
sudo systemsetup -setrestartfreeze on

# Disable Window Resume
defaults write com.apple.systempreferences NSQuitAlwaysKeepsWindows -bool false

# Allow apps from unidentified developers
sudo spctl --master-disable


# Finder
# --

# Show icons for hard drives, servers, and removable media on the desktop
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowMountedServersOnDesktop -bool true
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true

# Show hidden files/folders
defaults write com.apple.finder AppleShowAllFiles YES

# Show status bar
defaults write com.apple.finder ShowStatusBar -bool true

# Show path bar
defaults write com.apple.finder ShowPathbar -bool true

# Show filename extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Disable the warning when changing a file extension
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# Require password immediately after sleep or screen saver begins
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0

# Avoid creating .DS_Store files on network or USB volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true

# Enable AirDrop over Ethernet
defaults write com.apple.NetworkBrowser BrowseAllInterfaces -bool true

# Set the icon size of Dock items to 45 pixels
defaults write com.apple.dock tilesize -int 45


# Activity Monitor
# --

# Show the main window when launching Activity Monitor
defaults write com.apple.ActivityMonitor OpenMainWindow -bool true

# Visualize CPU usage in the Activity Monitor Dock icon
defaults write com.apple.ActivityMonitor IconType -int 5

# Show all processes in Activity Monitor
defaults write com.apple.ActivityMonitor ShowCategory -int 0

# Sort Activity Monitor results by CPU usage
defaults write com.apple.ActivityMonitor SortColumn -string "CPUUsage"
defaults write com.apple.ActivityMonitor SortDirection -int 0


# App Store
# --

# Enable the automatic update check
defaults write com.apple.SoftwareUpdate AutomaticCheckEnabled -bool true

# Check for software updates daily, not just once per week
defaults write com.apple.SoftwareUpdate ScheduleFrequency -int 1

# Download newly available updates in background
defaults write com.apple.SoftwareUpdate AutomaticDownload -int 1

# Install System data files & security updates
defaults write com.apple.SoftwareUpdate CriticalUpdateInstall -int 1


# Mail
# --

# Disable inline attachments (just show the icons)
defaults write com.apple.mail DisableInlineAttachmentViewing -bool true


# Restart affected applications
# --

for app in "Activity Monitor" \
	"Dock" \
	"Finder" \
	"Mail" \
	"SystemUIServer"; do
	killall "${app}" &> /dev/null
done


# XCode
# --

# Install CLI tools
xcode-select —-install
