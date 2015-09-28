#update system
apt-get update
apt-get upgrade
update-manager -c -d


#download language
apt-get install language-pack-fr-base
apt-get install language-pack-fr
apt-get install language-pack-gnome-fr-base
apt-get install language-pack-gnome-fr

#set language
update-locale LANG=fr_FR.utf8

#set keyboard layout
file="/etc/default/keyboard"
varname="XKBLAYOUT="
val="fr"
line=`grep $varname $file`
sed -i "s/$line/$varname\"$val\"/g" $file


#create file to add bash conf
touch ~/my_bashrc.sh
echo -e "\n#Add by ScryptFull\nbash ~/my_bashrc.sh" >> ~/.bashrc


#install google chrome
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | apt-key add -
sh -c 'echo "deb https://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
apt-get update
apt-get install google-chrome-stable


#install emacs
apt-get install emacs

#emacs's alias
echo -e "\n#Emacs\nalias ne='emacs -nw'" >> ~/my_bashrc.sh
echo "alias clean='rm -rf *~'" >> ~/my_bashrc.sh


#install git
apt-get install git
git config --global user.email "aqdtvz9@gmail.com"
git config --global user.name "Rainiugnas"
git config --global core.editor "emacs -nw"
git config --global push.default simple
echo "Default commit message change me in  ~/.gitmessage.txt" > ~/.gitmessage
git config --global commit.template ~/.gitmessage.txt
apt-get install gitk

#git's alias
echo -e "\n#Git" >> ~/my_bashrc.sh
echo -e 'alias branch="git branch"' >> ~/my_bashrc.sh
echo -e 'alias status="git status"' >> ~/my_bashrc.sh
echo -e 'alias info="branch; status"' >> ~/my_bashrc.sh
echo -e 'alias add="git add --all"' >> ~/my_bashrc.sh
echo -e 'alias pull="git pull"' >> ~/my_bashrc.sh
echo -e 'alias push="git push"' >> ~/my_bashrc.sh
echo -e 'alias back="git reset --hard HEAD"' >> ~/my_bashrc.sh
echo -e 'alias commit="add; git commit -a; push; info"' >> ~/my_bashrc.sh
echo -e 'alias commit_message="emacs -nw ~/.gitmessage.txt"' >> ~/my_bashrc.sh
echo -e 'alias commit_delete="git reset --hard HEAD^1"' >> ~/my_bashrc.sh


#install sublime
add-apt-repository ppa:webupd8team/sublime-text-2
apt-get update
apt-get install sublime-text

#sublime's conf
wget -O ~/.config/sublime-text-2/Packages/User/Preferences.sublime-settings https://github.com/Rainiugnas/ScriptFull/blob/master/sublime-settings.json
wget -O ~/.config/sublime-text-2/Packages/User/Default\ \(Linux\).sublime-keymap https://raw.githubusercontent.com/Rainiugnas/ScriptFull/master/sublime-bind.json
