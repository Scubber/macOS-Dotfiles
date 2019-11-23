#
# zsh
#

# Init Message
# --
printf "\e[96m"
echo "--"
echo "Starting zsh script"
echo "--"
echo ""
printf "\e[0m"


# zsh Stuff
# --

# prompt to replace ~/.zshrc

# prompt to set default shell
read -r -p "Set default shell to zsh? [y/N] " response
case "$response" in
    [yY][eE][sS]|[yY])

		# Change default shell to zsh
		sudo chsh -s /usr/local/bin/zsh
        ;;
    *)
        ;;
esac

echo "\\n"

# prompt to install Oh-My-Zsh
read -r -p "Install Oh-My-Zsh framework? [y/N] " response
case "$response" in
    [yY][eE][sS]|[yY])

		# Clone Oh-My-Zsh zsh framework
		rm -rf ~/.oh-my-zsh
		git clone http://github.com/robbyrussell/oh-my-zsh ~/.oh-my-zsh

		echo ""

		# prompt to install Powerlevel10k theme
		read -r -p "Install Powerlevel10k theme? [y/N] " response
		case "$response" in
			[yY][eE][sS]|[yY])

				# Clone Powerlevel10K Oh-My-Zsh theme
				rm -rf ~/.oh-my-zsh/themes/powerlevel10k
				git clone https://github.com/romkatv/powerlevel10k.git ~/.oh-my-zsh/themes/powerlevel10k

				echo ""
				;;
			*)

				# do nothing
				;;
		esac

        ;;
    *)

	# do nothing
	;;
esac

echo "\\n"
