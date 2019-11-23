#
# Let's Go!
#

# Welcome message
# --
printf "\e[96m"
echo "\\n--"
echo "Greetings, traveler!"
echo "--"
echo "Welcome to @samkasman's macOS workstation configuration tool."
echo "--"
echo "https://samkasman.com"
echo "--"
echo "WARNING: Be sure you know what you're doing. You might lose some important settings."
echo "--\\n"
printf "\e[0m"


# Main stuff
# --

# make scripts in configs/ executable
echo "\\nPreparing for launch.\\n"
chmod -R +x ./configs

echo "\\nDeploy...\\n"


# Menu - Script Selection
# --
PS3=""
options=("Everything" "System Preferences" "Applications" "CLI Config" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Everything")
            echo "\\n$opt, comin' right up!\\n"

			sudo -v

			# System Preferences
			./configs/macOS/macOS.sh

			# Applications + Config
			./configs/brew/brew.sh
			./configs/ableton/ableton.sh
			./configs/iterm2/iterm2.sh
			./configs/sublime-text/sublime-text.sh
			./configs/vscode/vscode.sh

			# CLI Config
			./configs/bash/bash.sh
			./configs/zsh/zsh.sh
			./configs/git/git.sh

            break;;
        "System Preferences")
            echo "\\n$opt, comin' right up!\\n"

			sudo -v

			./configs/macOS/macOS.sh

            break;;
        "Applications")
            echo "\\n$opt, comin' right up!\\n"

			sudo -v

			./configs/brew/brew.sh
			./configs/ableton/ableton.sh
			./configs/iterm2/iterm2.sh
			./configs/sublime-text/sublime-text.sh
			./configs/vscode/vscode.sh

            break;;
		"CLI Config")
            echo "\\n$opt, comin' right up!\\n"

			sudo -v

			./configs/bash/bash.sh
			./configs/zsh/zsh.sh
			./configs/git/git.sh

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
echo "MISSION ACCOMPLISHED"
echo ""
echo "--"
echo ""
printf "\e[0m"
