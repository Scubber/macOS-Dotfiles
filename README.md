# My macOS Dotfiles

**What are Dotfiles?**

In computing, dotfiles are files or directories that begin with a period --`.`

Filesystem utilities do not display these by default when showing a directory listing. They are commonly used for storing user preferences or preserving the state of a utility

### How does this work?

The `install.sh` script will deploy my base macOS workstation configuration including important OS and application settings and resources.

**Warning**: You're probably best off using this as inspiration for your own setup. Run at your own risk.

### Installation

run: `chmod +x install.sh && ./install.sh`

### What does it do?

- Various macOS settings
- Installs XCode CLI tools
- Installs [Homebrew](https://brew.sh/) package manager
- Uses `brew` to install my preferred apps via `configs/brew/Brewfile`
- Installs my preferred [Ableton Live](https://www.ableton.com/en/live/) theme
- Sets my `git` username and email address
- Sets [zsh](http://zsh.sourceforge.net/) as default shell w/ [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh) framework and [PowerLevel10k](https://github.com/romkatv/powerlevel10k) theme.

### To Do

- Backup/replace existing shell profiles
- Automate iTerm2 theme as described in [here](https://github.com/mbadolato/iTerm2-Color-Schemes/issues/140)
- Add wallpapers
