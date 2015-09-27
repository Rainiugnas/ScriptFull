#update system
apt-get update
apt-get upgrade
update-manager -c -d

#language
apt-get install language-pack-fr-base
apt-get install language-pack-fr
apt-get install language-pack-gnome-fr-base
apt-get install language-pack-gnome-fr

echo 'LANG="fr_FR.UTF-8"' > /etc/default/locale
echo 'LANGUAGE="fr_FR:en"' >> /etc/default/locale
