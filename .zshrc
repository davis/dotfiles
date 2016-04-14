#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

#
# Aliases
#

# directory shortcuts
alias cdw="cd $HOME/workspace"
alias cdf="cd $HOME/fixtures"
alias cdse="cd $HOME/workspace/merlin/searcher"
alias cdfe="cd $HOME/workspace/searcher-fe"
alias cdma="cd $HOME/workspace/merlin-admin"
alias cdjs="cd $HOME/workspace/merlin.js"
alias cda="cd $HOME/workspace/merlin-setup/ansible"
alias cdd="cd $HOME/workspace/merlin-tools/droohoo"

# admin group vars
alias ds="subl $HOME/workspace/merlin-setup/ansible/group_vars"

# ssh shortcuts
alias falcon1="ssh falcon1@falcon1.local"
alias awsprod1="aws-ssh merlin-prod-1-uploader-1"
alias awsprod2="aws-ssh merlin-prod-1-uploader-2"
alias awstest="aws-ssh merlin-test-1-fullstack"

# other shortcuts
alias zshrc="subl ~/.zshrc"
alias eslintrc="subl ~/.eslintrc"
alias vimrc="subl ~/.vimrc"
alias jspm="./node_modules/jspm/jspm.js"
alias gi="$HOME/workspace/merlin-setup/scripts/get-instances.py"

# open webpages
alias ofe="open http://localhost:9000/acme/"
alias oma="open http://localhost:9100/"

#
# Functions
#

function upload {
  curl -X POST -d @$1 $2
}

#
# Adding stuff to path
#

PATH=$HOME/workspace/merlin-setup/scripts:$HOME/.local/bin:$PATH
export PATH
export PYTHONSTARTUP=~/.pythonrc
