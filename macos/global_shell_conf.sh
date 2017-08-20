#Emacs alias
alias ne='emacs -nw'
alias clean='rm -rf *~'

#Git alias
alias branch="git branch"
alias status="git status"
alias info="branch; status"
alias back="git reset --hard HEAD"
alias commit_delete="git reset --hard HEAD^1"
alias committemplate="atom .git/template.txt"
alias loadtemplate='git config --local commit.template "$PWD/.git/template.txt"'

#Useful alias
alias bashconf="atom ~/.global_shell_conf.sh"
alias histo="history | grep"
alias findfile="find ~/. -iname"
alias loadconf="source ~/.global_shell_conf.sh"
# https://superuser.com/questions/566102/microphone-not-working-with-google-hangout
alias repairaudio="sudo killall coreaudiod"

#Go to alias
alias gophp='cd ~/Documents/php'
alias goruby='cd ~/Documents/ruby'
alias goct='cd ~/Documents/champagne-terroir'

#Launch atom
alias atomhosts='atom /private/etc/hosts'

## Remote connection
# ssh-keygen
# ssh-copy-id username@host
# Use ssh-add to store in ssh-agent and avoid alway use password
# Use ssh-add -D to readd the password
##
alias servct='ssh champagnme@ftp.champagne-terroir.fr'

#Open file
alias account='open ~/Google\ Drive/Compte.gsheet'
alias time='open ~/Google\ Drive/champagne-terroir-shared/Salaire\ 07:12\ 2017.gsheet'
