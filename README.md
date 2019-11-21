# My macOS Dotfiles

### What are dotfiles?

In computing, dotfiles are files or directories that begin with a `.`

Filesystem utilities do not display these by default when showing a directory listing. They are commonly used for storing user preferences or preserving the state of a utility.

### Installation

The `install.sh` script will deploy my base macOS workstation configuration including important OS and application settings and resources. This is used to automate both the process of setting up and maintaining one or more workstations.

**Warning**: You're probably best off using this as **✧･ﾟ:_inspiration_:･ﾟ✧** for your own setup. Run at your own risk.

To deploy, run: `chmod +x install.sh && ./install.sh`

### What does it do?

Provides prompts and menus that guide you through installing:

- My macOS `System Preferences`
- My macOS app settings
- [Xcode](https://developer.apple.com/library/archive/technotes/tn2339/_index.html) cli tools
- [Homebrew](https://brew.sh/) package manager
- My preferred macOS [cli & gui apps](https://github.com/samkasman/macOS-Dotfiles/blob/master/configs/brew/Brewfile) via `configs/brew/Brewfile`
- [zsh](http://zsh.sourceforge.net/) as default shell with [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh) and [PowerLevel10k](https://github.com/romkatv/powerlevel10k).
- Sets my `git` username and email address
- Installs my preferred [Ableton Live](https://www.ableton.com/en/live/) theme

### To Do

- Prompt to set hostname
- Prompt to replace default `~/.bash_profile` and `~/.zshrc` files
- Prompt to setup a static IP
- Prompt for git username/email instead of assuming
- Prompt to generate an `ssh` key in default location
- Prompt to mount NAS via IP address, always mount on boot
- Automate iTerm2 theme like [this](https://github.com/mbadolato/iTerm2-Color-Schemes/issues/140)
- Add App Store apps via `mas-cli`
- Ubersicht - add custom widgets
- VSCode:
	- install `Settings Sync` extension
	- enable `code` command
- Sublime Text
	- install `Package Manager`
	- install theme and settings
	- install `subl` command
- macOS - Create expected directories:
	- `~/Code`
	- `~/Streaming`
	- `~/VirtualBox VMs`

### Credit

Lots of ideas borrowed from these folks:
- [Cristian Guerra](https://github.com/explorador)
- [Mathias Bynens](https://github.com/mathiasbynens)
