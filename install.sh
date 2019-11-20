##
## Let's Go!
##

# Welcome message
# --
echo ""
printf "\e[96m"
echo "--"
echo ""
echo "Greetings, traveler!"
echo "Welcome to @samkasman's base macOS workstation configuration."
echo ""
echo "Let's get your password out of the way."
echo ""
echo "--"
echo ""
printf "\e[0m"

# sudo up before we do anything
sudo -v

# make scripts in configs/ executable
chmod -R +x ./configs

# run config scripts
./configs/macOS/macOS.sh
./configs/brew/brew.sh
./configs/zsh/zsh.sh
./configs/git/git.sh
./configs/ableton/ableton.sh

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
