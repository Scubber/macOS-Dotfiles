##
## Let's Go!
##

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

while true; do
    read -p "Are you ready? [y/n] " yn
    case $yn in
        [Yy]* ) break;;
        [Nn]* ) echo "\\nMaybe next time.\\n"; exit;;
        * ) echo "\\nPlease answer y or n.\\n";;
    esac
done

# sudo up before we do anything
echo "\\nCool -- let's get your password out of the way.\\n"
sudo -v

# make scripts in configs/ executable
echo "\\nMaking the scripts executable."
chmod -R +x ./configs

# run config scripts
echo "\\nRunning the scripts."
./configs/macOS/macOS.sh
./configs/brew/brew.sh
./configs/zsh/zsh.sh
./configs/git/git.sh
./configs/ableton/ableton.sh

# backup/replace shell scripts

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
