#   /$$                           /$$
#  | $$                          | $$
#  | $$$$$$$   /$$$$$$   /$$$$$$$| $$$$$$$
#  | $$__  $$ |____  $$ /$$_____/| $$__  $$
#  | $$  \ $$  /$$$$$$$|  $$$$$$ | $$  \ $$
#  | $$  | $$ /$$__  $$ \____  $$| $$  | $$
#  | $$$$$$$/|  $$$$$$$ /$$$$$$$/| $$  | $$
#  |_______/  \_______/|_______/ |__/  |__/


#
# paths
#

# main
export PATH=/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin

# composer
export PATH=$PATH:/Users/sam/.composer/vendor/bin

# mamp
export PATH=$PATH:/Applications/MAMP/Library/bin/

# mysql
export PATH=$PATH:/usr/local/mysql/bin

# nvm
export NVM_DIR=/Users/sam/.nvm
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# php
export PATH="/usr/local/opt/php/bin:$PATH"
export PATH="/usr/local/opt/php/sbin:$PATH"

# ruby
export PATH=/usr/local/opt/ruby/bin:$PATH


#
# aliases
#

# there's no place like home
alias ~="cd ~"

# cd - shorthand
alias ..='cd ../'
alias ..2='cd ../../'
alias ..3='cd ../../../'
alias ..4='cd ../../../../'

# Reload .bash_profile (use green text for confirmation, then switch back to white text)
alias bashrl='source ~/.bash_profile && printf "\e[96m" && echo .bash_profile reloaded! && printf "\e[0m" && echo ""'

# Edit .bash_profile
alias bashed='code ~/.bash_profile'

# brew update/upgrade/cleanup
alias brewplz='brew update && brew upgrade && brew cleanup'

# Clear shorthand
alias c='clear'

# cp - interactive (prompt before overwrite), verbose
alias cp='cp -iv'

# edit text
alias edit='subl'

# ls - detailed info
alias ls='ls -FGlAhp'

# mv - interactive (prompt before overwrite), verbose
alias mv='mv -iv'

# rm - interactive (prompt before overwrite), verbose
alias rm='rm -iv'

# open pwd in Finder
alias f='open -a Finder ./'

# npm install fix
alias npmplz='rm -rf node_modules/ && npm install'

# path - echo everything in current PATH
alias path='echo -e ${PATH//:/\\n}'

# sudo last command fix
alias plz='sudo $(history -p !!)'

# edit .zshrc
alias zshed='code ~/.zshrc'


#
# FUNCTIONS
#

# cd - Always list directory contents after cd
cd() { builtin cd "$@"; ls; }

# mcd - mkdir and cd into it
mcd () { mkdir -p "$1" && cd "$1"; }

# Change working directory to the top-most Finder window location
cdf() {
	cd "$(osascript -e 'tell app "Finder" to POSIX path of (insertion location as alias)')";
}

# credit to good buddy cristian for the following metrix and watch functions
# Cristian Guerra - https://github.com/explorador

# google lighthouse (requires chrome)
# --
# scan desktop site - run: "metrix <url>"
# scan mobile site - run: "metrix mobile <url>"

metrix() {
    if [ -z "$2" ]
        cd "/Users/sam/Code/x Metrix/"
    then
		lighthouse --view --chrome-flags="--headless" --emulated-form-factor="desktop" $1
	else
		lighthouse --view --chrome-flags="--headless" --emulated-form-factor="$1" $2
	fi
}

# browser-sync
# --
# run: watch <url>

watch() {
    # if argument is empty
    if [ -z "$1" ]
        then
        # run browser-sync on current directory (html)
        browser-sync start --directory --server --files "**/*.js, **/*.html, **/*.css"
    else
        # if argument is present, use it as a proxy value and run on current directory (php)
        browser-sync start --proxy $1 --directory --files "**/*.js, **/*.php, **/*.html, **/*.css"
    fi
}

#
# rice
#

# terminal prompt - "[time][pwd]: "
PS1="[\t][\w]: "

# enable color coding (same as ls -G)
export CLICOLOR=1

if [ $TERM_PROGRAM != "vscode" ]
	# not vscode terminal
	then

	# welcome message (requires figlet)
	printf "\e[96m" # green text
	figlet -f alligator2 "WVS" # generate figlet ascii text
	printf "\e[0m" # white text (persists)
	echo ""
	echo "G'day, mate."
	echo "--"
	echo ""
else
	# VSCode Terminal
	echo ""
fi
