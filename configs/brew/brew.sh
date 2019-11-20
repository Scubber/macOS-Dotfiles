##
## Homebrew
##

# Init Message
# --
echo ""
printf "\e[96m"
echo "--"
echo ""
echo "Starting Homebrew script"
echo ""
echo "--"
echo ""
printf "\e[0m"

# Install Homebrew
# --
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Make sure we're on the most recent version
# --
brew update

# Upgrade any existing formulae
# --
brew upgrade

# Install apps via configs/Brewfile
# --
cd configs/brew/ && brew bundle && cd ../../

# Remove old versions from the cellar
# --
brew cleanup
