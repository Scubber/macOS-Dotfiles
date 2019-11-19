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

# Configure zsh
./zsh.sh

# Block macOS apps from unidentified developers
# sudo spctl --master-enable
