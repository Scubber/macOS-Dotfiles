# Let's go!
# --

# Welcome message
echo "\\nGreetings, traveler!"
echo "\\nWelcome to @samkasman's base macOS workstation configuration."
echo "\\nLet's get your password out of the way.\\n"

# sudo up before we do anything
sudo -v


# macOS
# --

# Close all System Preferences panes
osascript -e 'tell application "System Preferences" to quit'

# Enable Dark mode
osascript -e 'tell app "System Events" to tell appearance preferences to set dark mode to true'

# Show hidden files/folders + restart Finder
defaults write com.apple.finder AppleShowAllFiles YES && killall Finder

# Allow macOS apps from unidentified developers
spctl --master-disable

# Expand save panel by default
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 -bool true

# Expand print panel by default
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint2 -bool true

# Disable Resume system-wide
defaults write com.apple.systempreferences NSQuitAlwaysKeepsWindows -bool false

# Disable “natural” (Lion-style) scrolling
defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false

# Restart automatically if the computer freezes
sudo systemsetup -setrestartfreeze on


# XCode
# --

# Install CLI tools
xcode-select —-install


# Homebrew
# --

# Install brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Make sure we're on the most recent version
brew update

# Upgrade any existing formulae
brew upgrade

# Install apps via configs/Brewfile
cd configs/brew/ && brew bundle && cd ../../

# Remove old versions from the cellar
brew cleanup


# zsh
# --

# Clone Oh-My-Zsh zsh framework
git clone http://github.com/robbyrussell/oh-my-zsh ~/.oh-my-zsh

# Clone Powerlevel10K Oh-My-Zsh theme
git clone https://github.com/romkatv/powerlevel10k.git ~/.oh-my-zsh/themes/powerlevel10k

# Change default shell to zsh
chsh -s /usr/local/bin/zsh


# git
# --

# set git username and email address
git config --global user.name "Sam Kasman"
git config --global user.email sk@samkasman.com


# Ableton Live
# --

# Symlink the "DSatur8" theme into the Ableton app package
cp "./configs/ableton/DSatur8.ask" "/Applications/Ableton Live 10 Suite.app/Contents/App-Resources/Themes/"

# Remove default Serum directory to trigger it to prompt for a custom path on launch
sudo rm -rf "/Library/Audio/Presets/Xfer Records/Serum Presets/"


# macOS post-install
# --

# Block macOS apps from unidentified developers
# sudo spctl --master-enable
