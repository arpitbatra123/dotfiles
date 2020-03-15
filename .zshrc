# fnm
eval "$(fnm env --multi)"

# aliases
alias ls='ls -l'
# edit the zsh shell config
alias ez='code ~/Documents/dotfiles/.zshrc'
# load the shell config
alias sz='source ~/.zshrc'

# git aliases
alias gco='git checkout'
alias gp='git pull'

# util functions
function gituser () {
    echo "git name is now '`git config --local user.name`' and email is '`git config --local user.email`'"
}

function gitgohome () {
    git config --local user.name "Arpit Batra"
    gituser;
}

function gitgowork () {
    git config --local user.email "arpit.batra@postman.com"
    gituser;
}