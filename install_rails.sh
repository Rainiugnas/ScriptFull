#get rails
apt-get install curl
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
\curl -sSL https://get.rvm.io | bash -s stable --rails

#Required by rvm
source ~/.rvm/scripts/rvm
echo -e "\nRequired by rvm\nsource ~/.rvm/scripts/rvm" >> ~/bashrc


#Add bash conf
echo -e "\n#Rails" >> ~/my_bashrc.sh
echo 'alias srake="bin/spring rake"' >> ~/my_bashrc.sh
echo 'alias srails="bin/spring rails"' >> ~/my_bashrc.sh
echo 'alias seed="srake db:reset; srails server"' >> ~/my_bashrc.sh
echo 'alias console="srails console"' >> ~/my_bashrc.sh
echo 'alias server="srails server"' >> ~/my_bashrc.sh
echo 'alias stest="srake test"' >> ~/my_bashrc.sh
