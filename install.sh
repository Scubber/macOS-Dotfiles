#
# Let's Go!
#

WHITE='\033[1;37m'
GRAY='\033[0;37m'
BLUEL='\033[1;34m'
BLUED='\033[0;34m'
GREEN='\033[0;32m'
RED='\033[0;31m'

# Welcome message
# --
echo "\\nGreetings, traveler!"
echo "\\n--"
echo "\\nWelcome to ${BLUED}@samkasman${WHITE}'s macOS workstation configuration tool."
echo "${BLUED}https://samkasman.com${WHITE}\\n"
echo "--"
echo "${RED}WARNING:${WHITE} Be sure you know what you're doing. You might lose some important settings."
echo "--\\n"

echo "${GREEN}\\nPreparing for launch.${WHITE}\\n"

# Main stuff
# --

# make scripts in configs/ executable
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
echo "${GREEN}"
echo "--"
echo "MISSION ACCOMPLISHED"
echo "--"
echo ""
