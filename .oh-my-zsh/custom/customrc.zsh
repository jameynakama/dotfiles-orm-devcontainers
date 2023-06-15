##### Zsh/Oh-my-Zsh Configuration
# export ZSH="/home/node/.oh-my-zsh"

export PATH="$HOME/bin:$PATH"

ZSH_THEME="robbyrussell"
plugins=(zsh-vi-mode)

alias g='git'
alias run='orm d run web'
alias jest='npm run test'
alias test='orm d run test'
alias gamend='g commit -a --amend --no-edit && g pp'

# source $ZSH/oh-my-zsh.sh
