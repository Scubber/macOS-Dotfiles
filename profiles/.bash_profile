##
##   /$$                           /$$                                             /$$$$$$  /$$ /$$
##  | $$                          | $$                                            /$$__  $$|__/| $$
##  | $$$$$$$   /$$$$$$   /$$$$$$$| $$$$$$$          /$$$$$$   /$$$$$$   /$$$$$$ | $$  \__/ /$$| $$  /$$$$$$
##  | $$__  $$ |____  $$ /$$_____/| $$__  $$        /$$__  $$ /$$__  $$ /$$__  $$| $$$$    | $$| $$ /$$__  $$
##  | $$  \ $$  /$$$$$$$|  $$$$$$ | $$  \ $$       | $$  \ $$| $$  \__/| $$  \ $$| $$_/    | $$| $$| $$$$$$$$
##  | $$  | $$ /$$__  $$ \____  $$| $$  | $$       | $$  | $$| $$      | $$  | $$| $$      | $$| $$| $$_____/
##  | $$$$$$$/|  $$$$$$$ /$$$$$$$/| $$  | $$       | $$$$$$$/| $$      |  $$$$$$/| $$      | $$| $$|  $$$$$$$
##  |_______/  \_______/|_______/ |__/  |__//$$$$$$| $$____/ |__/       \______/ |__/      |__/|__/ \_______/
##                                         |______/| $$
##                                                 | $$
##                                                 |__/
##

##
## PATHS
##

# Main PATH
export PATH=/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin

# Composer
export PATH=$PATH:/Users/sam/.composer/vendor/bin

# MAMP
export PATH=$PATH:/Applications/MAMP/Library/bin/

# MySQL
export PATH=$PATH:/usr/local/mysql/bin

# nvm
export NVM_DIR=/Users/sam/.nvm
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# php
export PATH="/usr/local/opt/php/bin:$PATH"
export PATH="/usr/local/opt/php/sbin:$PATH"

# Ruby
export PATH=/usr/local/opt/ruby/bin:$PATH

##
## ALIASES
##

# Default Overrides
# -

# cd - Always list directory contents upon 'cd'
cd() { builtin cd "$@"; ls; }

# cd - shorthand
alias ..='cd ../'
alias ..2='cd ../../'
alias ..3='cd ../../../'
alias ..4='cd ../../../../'

# cp - interactive (prompt before overwrite), verbose
alias cp='cp -iv'

# ls - detailed info
alias ls='ls -FGlAhp'

# mcd - mkdir and cd into it
mcd () { mkdir -p "$1" && cd "$1"; }

# mv - interactive (prompt before overwrite), verbose
alias mv='mv -iv'

# PATH - echo everything in current PATH
alias path='echo -e ${PATH//:/\\n}'

# rm - interactive (prompt before overwrite), verbose
alias rm='rm -iv'

# cat alias (requires bat)
# alias cat='bat'

# Custom
# -

# There's no place like home
alias ~="cd ~"

# Clear shorthand
alias c='clear'

# Edit text
alias edit='subl'

# Open pwd in Finder
alias f='open -a Finder ./'

# Reload .bash_profile (use green text for confirmation, then switch back to white text)
alias bashload='source ~/.bash_profile && printf "\e[96m" && echo .bash_profile reloaded! && printf "\e[0m" && echo ""'

# Edit bash profile
alias bashedit='code ~/.bash_profile'

# brew update/upgrade/cleanup
alias brewplz='brew update && brew upgrade && brew cleanup'

# npm install fix
alias npmplz='rm -rf node_modules/ && npm install'

# Re-run last command with sudo
alias plz='sudo $(history -p !!)'

##
## FUNCTIONS
##

# Google Lighthouse (Google Speed Scan - Requires Google Chrome)
# scan desktop site - run: "metrix <url>"
# scan mobile site - run: "metrix mobile <url>"
metrix() {
    if [ -z "$2" ]
        cd "/Users/sam/Websites/x Audits/"
    then
		lighthouse --view --chrome-flags="--headless" --emulated-form-factor="desktop" $1
	else
		lighthouse --view --chrome-flags="--headless" --emulated-form-factor="$1" $2
	fi
}

# Browser-sync
# run: watch <url>
watch() {
    # If argument is empty
    if [ -z "$1" ]
        then
        # Run browser-sync on current directory (html)
        browser-sync start --directory --server --files "**/*.js, **/*.html, **/*.css"
    else
        # If argument is present, use it as a proxy value and run on current directory (php)
        browser-sync start --proxy $1 --directory --files "**/*.js, **/*.php, **/*.html, **/*.css"
    fi
}

##
## RICE
##

# Change terminal prompt - "[time][pwd]: "
PS1="[\t][\w]: "

# Enable color coding (same as ls -G)
export CLICOLOR=1

if [ $TERM_PROGRAM != "vscode" ]
	# Not VSCode Terminal
	then

	# Welcome Message (requires figlet - install via brew)
	printf "\e[96m" # green text
	figlet -f alligator2 "WVS" # figlet ascii text
	printf "\e[0m" # white text (persists)
	echo ""
	echo "G'day, mate."
	echo "--"
	echo ""
else
	# VSCode Terminal
	echo ""
fi
