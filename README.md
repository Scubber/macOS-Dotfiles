# macOS dotfiles

These files will deploy my base macOS workstation configuration.

### Installation

run: `chmod +x install.sh && ./install.sh`

### What does it do?

- Shows hidden files/folders, restarts Finder
- Installs XCode CLI tools
- Allows macOS apps from unidentified developers
- Installs Homebrew macOS package manager
- Uses `brew` to install my preferred apps via `configs/Brewfile`
- Installs my preferred Ableton theme and deletes the default Serum presets folder
- Sets [zsh](http://zsh.sourceforge.net/) as default shell w/ [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh) framework and [PowerLevel10k](https://github.com/romkatv/powerlevel10k) theme.

### To Do

- Install script: copy shell config files into proper locations
