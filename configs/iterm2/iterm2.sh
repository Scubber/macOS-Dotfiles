#
# iTerm2
#

# Init Message
# --
printf "\e[96m"
echo "--"
echo "iTerm2"
echo "--"
echo ""
printf "\e[0m"


# Main stuff
# --

# Install the Dracula theme for iTerm2
open "configs/iterm2/Dracula.itermcolors"

# Don’t display the annoying prompt when quitting iTerm2
defaults write com.googlecode.iterm2 PromptOnQuit -bool false
