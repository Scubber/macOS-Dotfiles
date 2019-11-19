##
## Let's Go!
##

# Welcome message
echo "\\nGreetings, traveler!"
echo "\\nWelcome to @samkasman's base macOS workstation configuration."
echo "\\nLet's get your password out of the way.\\n"

# sudo up before we do anything
sudo -v


##
## macOS
##

# System Preferences
# --

# Close all System Preferences panes
osascript -e 'tell application "System Preferences" to quit'

# Enable Dark mode
osascript -e 'tell app "System Events" to tell appearance preferences to set dark mode to true'

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

# Set the icon size of Dock items to 36 pixels
defaults write com.apple.dock tilesize -int 36


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

echo "Done. Note that some of these changes require a logout/restart to take effect."


##
## XCode
##

# Install CLI tools
xcode-select —-install


##
## Homebrew
##

# Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Make sure we're on the most recent version
brew update

# Upgrade any existing formulae
brew upgrade

# Install apps via configs/Brewfile
cd configs/brew/ && brew bundle && cd ../../

# Remove old versions from the cellar
brew cleanup


##
## zsh
##

# Clone Oh-My-Zsh zsh framework
git clone http://github.com/robbyrussell/oh-my-zsh ~/.oh-my-zsh

# Clone Powerlevel10K Oh-My-Zsh theme
git clone https://github.com/romkatv/powerlevel10k.git ~/.oh-my-zsh/themes/powerlevel10k

# Change default shell to zsh
sudo chsh -s /usr/local/bin/zsh


##
## git
##

# set git username and email address
git config --global user.name "Sam Kasman"
git config --global user.email sk@samkasman.com


##
## Ableton Live
##

# Symlink the "DSatur8" theme into the Ableton app package
cp "./configs/ableton/DSatur8.ask" "/Applications/Ableton Live 10 Suite.app/Contents/App-Resources/Themes/"
