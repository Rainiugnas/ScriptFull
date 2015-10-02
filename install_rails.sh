#get rails
apt-get install curl
\curl -L https://get.rvm.io | bash -s stable --rails

#Required by rvm
source /home/rainiugnas/.rvm/scripts/rvm
echo -e "\nRequired by rvm\nsource /home/rainiugnas/.rvm/scripts/rvm" >> ~/bashrc


#Add bash conf
echo -e "\n#Rails" >> ~/my_bashrc.sh
echo 'alias srake="bin/spring rake"' >> ~/my_bashrc.sh
echo 'alias srails="bin/spring rails"' >> ~/my_bashrc.sh
echo 'alias seed="srake db:reset; srails server"' >> ~/my_bashrc.sh
echo 'alias console="srails console"' >> ~/my_bashrc.sh
echo 'alias server="srails server"' >> ~/my_bashrc.sh
echo 'alias stest="srake test"' >> ~/my_bashrc.sh