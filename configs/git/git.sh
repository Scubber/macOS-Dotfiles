#
# git
#

# Init Message
# --

echo ""
printf "\e[96m"
echo "--"
echo "Starting git script"
echo "--"
echo ""
printf "\e[0m"


# Git Settings
# --

# prompt to configure git
read -r -p "Configure git? [y/N] " response
case "$response" in
    [yY][eE][sS]|[yY])

		echo "\\nEnter name:"

		read name

		# set git name
		git config --global user.name "$name" --replace-all

		echo "\\nEnter e-mail address:"

		read email

		# set git name
		git config --global user.email $email --replace-all

		# confirm git settings
		# echo "Git settings:"
		# git config user.name
		# git config user.email

        ;;
    *)
		# do nothing
        ;;
esac

echo "\\n"
