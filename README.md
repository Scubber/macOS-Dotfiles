# My macOS Dotfiles

### What are dotfiles?

In computing, dotfiles are files or directories that begin with a `.`

Filesystem utilities do not display these by default when showing a directory listing. They are commonly used for storing user preferences or preserving the state of a utility.

### How does this work?

The `install.sh` script will deploy my base macOS workstation configuration including important OS and application settings and resources. This is used to automate both the process of setting up and easily maintaining multiple workstations.

**Warning**: You're probably best off using this as _inspiration_ for your own setup. Run at your own risk.

### Installation

run: `chmod +x install.sh && ./install.sh`

### What does it do?

- macOS `System Preferences` settings
- macOS app settings
- Installs `xcode cli tools`
- Installs [Homebrew](https://brew.sh/) package manager
- Uses `brew` to install my preferred apps via `configs/brew/Brewfile`
- Sets [zsh](http://zsh.sourceforge.net/) as default shell w/ [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh) framework and [PowerLevel10k](https://github.com/romkatv/powerlevel10k) theme.
- Sets my `git` username and email address
- Installs my preferred [Ableton Live](https://www.ableton.com/en/live/) theme

### To Do

- Backup/replace existing shell profiles
- Automate iTerm2 theme as described in [here](https://github.com/mbadolato/iTerm2-Color-Schemes/issues/140)
- Add wallpapers
- Interactive selection of specific or all scripts

### Credit

Lots of ideas borrowed from these folks:
- https://github.com/explorador
- https://github.com/mathiasbynens
