# App install
xcode-select --install
echo 'Press enter to continue, after the xcode execution is finish'
read
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew cask install google-chrome
brew cask install atom
brew cask install vlc
brew cask install google-drive
brew cask install webtorrent
brew cask install docker
brew cask install filezilla

# Shell conf
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
curl https://raw.githubusercontent.com/Rainiugnas/ScriptFull/master/macos/global_shell_conf.sh > ~/.global_shell_conf.sh
echo "source ~/.global_shell_conf.sh" >> ~/.zshrc

# Git configuration
git config --global user.email "aqdtvz9@gmail.com"
git config --global user.name "Rainiugnas"
git config --global core.editor "emacs -nw"
git config --global push.default simple

#Atom configuration
apm install jumpy
apm install simple-panes
apm install todo-show
apm install tree-view-git-status
apm install git-plus
apm install block-travel
apm install file-explorer
apm install platformio-ide-terminal
apm install goto-definition
curl https://raw.githubusercontent.com/Rainiugnas/ScriptFull/master/macos/atom_keybinding.cson > ~/.atom/keymap.cson
curl https://raw.githubusercontent.com/Rainiugnas/ScriptFull/master/macos/atom_config.cson > ~/.atom/config.cson

#Doc configuration
defaults write com.apple.dock "persistent-apps" {}
defaults read com.apple.dock > /dev/null
defaults write com.apple.dock "persistent-others" {}
defaults read com.apple.dock > /dev/null
killall Dock

#Add folders
mkdir ~/Documents/ruby
mkdir ~/Documents/rails

#Natify web
npm install nativefier -g
cd ~/Applications
nativefier "https://www.messenger.com/"
nativefier "https://trello.com/"
nativefier "https://inbox.google.com" --name "Inbox"

#Shell theme
defaults write com.apple.Terminal "Default Window Settings" "Pro"
defaults write com.apple.Terminal "Startup Window Settings" "Pro"
killall Terminal
