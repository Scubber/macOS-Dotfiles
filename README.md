# My macOS Dotfiles

### What are dotfiles?

In computing, dotfiles are files or directories that begin with a `.`

They are commonly used for storing user preferences or preserving the state of a utility.

### Installation

**Warning**: Potentially dangerous. Run at your own risk.

run: `chmod +x install.sh && ./install.sh`

### What does it do?

Provides prompts and menus that guide you through the automated setup of:

- Your hostname
- My preferred macOS `System Preferences`
- My preferred macOS app settings
- [Xcode](https://developer.apple.com/library/archive/technotes/tn2339/_index.html) cli tools
- [Homebrew](https://brew.sh/) and my preferred macOS [tools and apps](https://github.com/samkasman/macOS-Dotfiles/blob/master/configs/brew/Brewfile)
- My `~/.bash_profile`
- [zsh](http://zsh.sourceforge.net/) with [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh) and [PowerLevel10k](https://github.com/romkatv/powerlevel10k).
- Your `git` username and email address
- My preferred [Ableton Live](https://www.ableton.com/en/live/) theme

### To Do

- Prompt to replace default `~/.zshrc` file
- Prompt to setup a static IP
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
