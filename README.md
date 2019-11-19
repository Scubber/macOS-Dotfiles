# macOS dotfiles

These files will deploy my base macOS workstation configuration.

### Installation

run: `chmod +x install.sh && ./install.sh`

### What does it do?

- Show hidden files/folders, restart Finder
- Installs XCode cli tools
- Allows macOS apps from unidentified developers
- Installs Homebrew macOS package manager
- Uses `brew` to install my preferred apps via `configs/Brewfile`
- Installs my preferred Ableton theme and deletes the default Serum presets folder
- Sets [zsh](http://zsh.sourceforge.net/) as default shell w/ [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh) framework and [PowerLevel10k](https://github.com/romkatv/powerlevel10k) theme.

### To Do

- Alias shell profiles into default locations
