# macOS dotfiles

The `install.sh` script will deploy my base macOS workstation configuration including important OS and application settings and resources.

### Installation

run: `chmod +x install.sh && ./install.sh`

### What does it do?

- Various macOS settings
- Installs XCode CLI tools
- Installs [Homebrew](https://brew.sh/) package manager
- Uses `brew` to install my preferred apps via `configs/brew/Brewfile`
- Installs my preferred Ableton Live theme
- Sets my `git` username and email address
- Sets [zsh](http://zsh.sourceforge.net/) as default shell w/ [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh) framework and [PowerLevel10k](https://github.com/romkatv/powerlevel10k) theme.

### To Do

- Backup/replace shell profiles as part of install script
- Automate iTerm2 theme as described in [here](https://github.com/mbadolato/iTerm2-Color-Schemes/issues/140)
