# Show hidden files/folders
defaults write com.apple.finder AppleShowAllFiles YES

# relaunch Finder
killall Finder

# Install Xcode CLI tools
xcode-select —-install

# Allow macOS apps from unidentified developers
sudo spctl --master-disable

# Install brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# cd to configs/
cd configs/

# Install apps via configs/Brewfile
brew update
brew bundle
brew cleanup

# Clone Oh-My-Zsh zsh framework
git clone http://github.com/robbyrussell/oh-my-zsh ~/.oh-my-zsh

# Clone Powerlevel10K Oh-My-Zsh theme
git clone https://github.com/romkatv/powerlevel10k.git ~/.oh-my-zsh/themes/powerlevel10k

# Change default shell to zsh
chsh -s /usr/local/bin/zsh

# Block macOS apps from unidentified developers
# sudo spctl --master-enable
