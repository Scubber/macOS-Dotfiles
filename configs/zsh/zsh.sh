##
## zsh
##

# Init Message
# --

echo ""
printf "\e[96m"
echo "--"
echo ""
echo "Starting zsh script"
echo ""
echo "--"
echo ""
printf "\e[0m"

# Clone Oh-My-Zsh zsh framework
git clone http://github.com/robbyrussell/oh-my-zsh ~/.oh-my-zsh

# Clone Powerlevel10K Oh-My-Zsh theme
git clone https://github.com/romkatv/powerlevel10k.git ~/.oh-my-zsh/themes/powerlevel10k

# Change default shell to zsh
sudo chsh -s /usr/local/bin/zsh
