# Install Rvm with ruby and rails
brew install gpg
command curl -sSL https://rvm.io/pkuczynski.asc | gpg --import -
\curl -sSL https://get.rvm.io | bash -s stable --rails
source /Users/Rainiugnas/.rvm/scripts/rvm

# Shell configuration
echo '' >> ~/.global_shell_conf.sh
echo 'source /Users/Rainiugnas/.rvm/scripts/rvm' >> ~/.global_shell_conf.sh

# Atom configuration
apm install language-rspec
apm install rails-rspec
apm install rails-transporter
apm install ruby-test
apm install linter
apm install linter-ui-default
apm install linter-rubocop
