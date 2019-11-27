#
# Ableton Live
#

# Init Message
# --
printf "\e[96m"
echo "--"
echo "Ableton"
echo "--"
echo ""
printf "\e[0m"

# Copy the "DSatur8" theme into the Ableton app package
# --
cp "./configs/ableton/DSatur8.ask" "/Applications/Ableton Live 10 Suite.app/Contents/App-Resources/Themes/"

# Add expected directory structure if it doesn't exist
# --
mkdir -p ~/Audio/Audio\ Samples
mkdir -p ~/Audio/Virtual\ Instruments
