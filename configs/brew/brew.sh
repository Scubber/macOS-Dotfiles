#
# Homebrew
#

# Init Message
# --
echo ""
printf "\e[96m"
echo "--"
echo "Starting Homebrew script"
echo "--"
echo ""
printf "\e[0m"


# Install Homebrew
# --

if [[ $(command -v brew) == "" ]]; then

	# no brew, install it
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

else

	# brew is installed - check for brew and formulae updates
	brew update
	brew upgrade

fi

# install apps via configs/Brewfile
cd configs/brew/ && brew bundle && cd ../../

# remove old versions from the cellar
brew cleanup
