# macOS pre-install
# --

# Enable Dark mode
osascript -e 'tell app "System Events" to tell appearance preferences to set dark mode to true'

# Show hidden files/folders
defaults write com.apple.finder AppleShowAllFiles YES

# relaunch Finder
killall Finder

# Install Xcode CLI tools
xcode-select —-install

# Allow macOS apps from unidentified developers
sudo spctl --master-disable


# Homebrew
# --

# Install brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# cd to configs/brew/
cd configs/brew/

# Install apps via configs/Brewfile
brew bundle
brew cleanup

# cd back to project root
cd ../../


# Ableton Live
# --

# Symlink the "DSatur8" theme into the Ableton app package
cp "./configs/ableton/DSatur8.ask" "/Applications/Ableton Live 10 Suite.app/Contents/App-Resources/Themes/"

# Remove default Serum directory to trigger it to prompt for a custom path on launch
sudo rm -rf "/Library/Audio/Presets/Xfer Records/Serum Presets/"


# git
# --

# set git username and email address
git config --global user.name "Sam Kasman"
git config --global user.email sk@samkasman.com


# zsh
# --

# Clone Oh-My-Zsh zsh framework
git clone http://github.com/robbyrussell/oh-my-zsh ~/.oh-my-zsh

# Clone Powerlevel10K Oh-My-Zsh theme
git clone https://github.com/romkatv/powerlevel10k.git ~/.oh-my-zsh/themes/powerlevel10k

# Change default shell to zsh
chsh -s /usr/local/bin/zsh


# macOS post-install
# --

# Block macOS apps from unidentified developers
# sudo spctl --master-enable
