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


