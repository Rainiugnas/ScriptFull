brew install dvm
brew install dlite

sudo dlite install
sudo dlite daemon

# Bashconf
# Docker and dlite
# https://github.com/howtowhale/dvm/issues/144
source /usr/local/opt/dvm/dvm.sh
dvm install 1.10.0
dlite start

# Run rspec on docker
function run_test {
  docker exec --interactive --tty --user xxx $(echo "$(basename $(pwd) | tr '[[:upper:]]' '[[:lower:]]' | tr -d '[[:punct:]]')_web_1") bash -c "bin/rspec $1"
}
