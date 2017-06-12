### System preference
- General
  - Automatically hide and show the menu bar
  - Default web browser Google Chrome
- Desktop & Screen Saver
  - Solid color -> Solid grey pro ultra dark
- Dock
  - Size: large
  - Magnification: false
  - Position on screen: left
  - Automatically hide and show the dock: true
- Mission control
  - Automatically rearrange Scape ...: false
  - Dashboard: off
- Display
  - Resolution: default for Display
  - Automatically adjust brightness: false
- Remove all application on dock

### Applications

- Chrome
- Git
- Atom
- Google drive
- Zsh
- Ntfs
- Homebrew
- Webtorrent
- Postman
- Vlc

### Shell configuration

- `curl https://raw.githubusercontent.com/Rainiugnas/ScriptFull/master/macos/global_shell_conf.sh > ~/.global_shell_conf.sh`
- `echo "source .global_shell_conf.sh" > ~/.bash_profile`
- `echo "zsh" >> ~/.bash_profile`
- `echo "source ~/.global_shell_conf.sh" >> ~/.zshrc`
- In ~/.zshrc use ZSH_THEME="robbyrussell"

### Git configuration

- `git config --global user.email "aqdtvz9@gmail.com"`
- `git config --global user.name "Rainiugnas"`
- `git config --global core.editor "emacs -nw"`
- `git config --global push.default simple`

### Atom configuration

- UI Theme: One dark
- Syntax system: Atom dark
- Packages:
  - jumpy
  - simple-panes
  - todo-show
  - tree-view-git-status
  - git-plus
  - block-travel
  - file-explorer
  - platformio-ide-terminal
    - Animation speed: 100
- Copy content of /macos/atom_keybinding.cson in atom keybinding file
