#Emacs alias
alias ne='emacs -nw'
alias clean='rm -rf *~'

#Git alias
cbranch() {
  echo "$1 - " > $PWD/.git/template.txt
  git config --local commit.template $PWD/.git/template.txt
  git checkout -b $1
}
alias branch="git checkout"
alias status="git status"
alias info="git branch; status"
alias back="git reset --hard HEAD"
alias commit_delete="git reset --hard HEAD^1"
alias committemplate="atom .git/template.txt"
alias loadtemplate='git config --local commit.template "$PWD/.git/template.txt"'
alias glog="git log --oneline"
alias plog="git log --graph --pretty=tformat:'%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%an %ar)%Creset'"
alias rebase="git rebase -i"
alias rcontinue="git rebase --continue"
alias rabort="git rebase --abort"
alias pushf="git push --force"

#Useful alias
alias bashconf="atom ~/.global_shell_conf.sh"
alias histo="history | grep"
alias findfile="find ~/. -iname"
alias loadconf="source ~/.global_shell_conf.sh"
# https://superuser.com/questions/566102/microphone-not-working-with-google-hangout
alias repairaudio="sudo killall coreaudiod"
alias pm="password_manager -f /Users/Rainiugnas/Documents/password.json"
alias opm="atom /Users/Rainiugnas/Documents/password.json && pm -t"

#Launch atom
alias atomhosts='atom /private/etc/hosts'

## Remote connection
# ssh-keygen
# ssh-copy-id username@host
# Use ssh-add to store in ssh-agent and avoid alway use password
# Use ssh-add -D to use the password
##
