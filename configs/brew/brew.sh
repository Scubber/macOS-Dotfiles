#
# Homebrew
#

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

if brew ls --versions myformula > /dev/null; then

	# no brew, install it
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

else

	# brew is installed -- check for updates
	brew update

	# upgrade any existing formulae
	# brew upgrade

fi

# install apps via configs/Brewfile
cd configs/brew/ && brew bundle && cd ../../

# remove old versions from the cellar
brew cleanup
