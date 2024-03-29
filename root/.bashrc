alias ll="ls -la"
alias vi="vim"
alias f="find . -name"
alias g='git'
alias gs='git status'
alias ga='git add'
alias gaa='git add -A'
alias gb='git branch'
alias gc='git commit -m'
alias gg='git pull'
alias gp='git push'
alias co='git checkout'
alias gd='git diff'
alias gr='git remote -v'
alias gl="git --no-pager log --pretty=format:'%C(bold)%h %ci %C(magenta)%ae %C(cyan)%s%C(reset)' --abbrev-commit --max-count=20; echo"
alias gll="git --no-pager log --pretty=format:'%C(bold)%h %ci %C(magenta)%ae %C(cyan)%s%C(reset)' --abbrev-commit; echo"
alias glt='git --no-pager log --pretty=oneline --abbrev-commit --max-count=20'
alias gk="git log --graph --pretty=format:'%C(bold)%h%Creset%C(magenta)%d%Creset %s %C(yellow)<%an> %C(cyan)(%cr)%Creset' --abbrev-commit --date=relative"

export EDITOR=vim
export PS1='[\u@\h \W]\$ '

export PATH=$PATH:/opt/puppetlabs/bin
export PATH=/opt/puppetlabs/puppet/bin:$PATH

puppet-query() {
   # curl -s -G http://localhost:8080/pdb/query/v4/facts --data-urlencode 'query=["=", "name", "operatingsystemmajrelease"]'|jq
   if [ -z "$2" ]; then
     Q=""
   else
     Q="query=$2"
   fi
   curl -s -G http://localhost:8080/pdb/query/v4/$1 --data-urlencode "$Q" | jq
}


cd $HOME
