#
# Homebrew
#

# init
# --
printf "\e[96m"
echo "--"
echo "brew"
echo "--"
echo ""
printf "\e[0m"


# brew Stuff
# --

# check if brew is installed
if [[ $(command -v brew) == "" ]]; then

	# no brew, install it
	echo "Installing Homebrew.\\n"
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

else

	# brew is installed
	echo "Homebrew detected. Skipping install.\\n"

	# prompt to check for brew and formulae updates
	read -r -p "Check for application updates? [y/N] " response
	case "$response" in
		[yY][eE][sS]|[yY])

			# yes - update brew and formulae
			brew update

			# update brew apps
			brew upgrade
			;;
		*)

			# no - do nothing
			;;
	esac

	echo "\\n"

fi

# prompt to install all apps via Brewfile
read -r -p "Install all apps via Brewfile? [y/N] " response
case "$response" in
    [yY][eE][sS]|[yY])

		# yes - install apps via Brewfile
		cd configs/brew/ && brew bundle && cd ../../

		# remove old versions from the cellar
		brew cleanup
        ;;
    *)

		# no - do nothing
        ;;
esac

echo "\\n"
