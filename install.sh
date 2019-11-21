#
# Let's Go!
#

# Welcome message
# --
printf "\e[96m"
echo "\\n--"
echo "Greetings, traveler!"
echo "--"
echo "Welcome to @samkasman's base macOS workstation configuration."
echo "--"
echo "https://samkasman.com"
echo "--"
echo "WARNING: Be sure you know exactly what this is going to do. You might lose some important settings."
echo "--\\n"
printf "\e[0m"

# Main stuff
# --

# make scripts in configs/ executable
echo "\\nPreparing for launch.\\n"
chmod -R +x ./configs

echo "\\nInstall...\\n"

# script install menu
PS3=""
options=("Everything" "System Preferences" "Applications" "CLI Tools" "Ableton Live" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Everything")
            echo "\\n$opt, comin' right up!"

			sudo -v

			./configs/macOS/macOS.sh
			./configs/brew/brew.sh
			./configs/zsh/zsh.sh
			# backup/replace shell scripts here
			./configs/git/git.sh
			./configs/ableton/ableton.sh

            break;;
        "System Preferences")
            echo "\\n$opt, comin' right up!"

			sudo -v

			./configs/macOS/macOS.sh

            break;;
        "Applications")
            echo "\\n$opt, comin' right up!"

			sudo -v

			./configs/brew/brew.sh

            break;;
		"CLI Tools")
            echo "\\n$opt, comin' right up!"

			sudo -v

			./configs/zsh/zsh.sh
			./configs/git/git.sh

			# backup/replace shell scripts here

            break;;
		"Ableton Live")
            echo "\\n$opt, comin' right up!"

			sudo -v

			./configs/ableton/ableton.sh

            break;;
        "Quit")
			echo "\\nIt's time for you to go.\\n"
            break;;
        *) echo "\\n$REPLY is invalid.\\n";;
    esac
done

# Success message
# --
echo ""
printf "\e[96m"
echo "--"
echo ""
echo "Boom! All done."
echo ""
echo "--"
echo ""
printf "\e[0m"
