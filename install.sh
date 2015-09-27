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
echo -e "\n#Add by Scryptfull\nbash ~/my_bashrc.sh" >> ~/.bashrc