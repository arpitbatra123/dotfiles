# fnm
eval "$(fnm env --multi)"

# aliases
alias ls='ls -l'
# edit the zsh shell config
alias ez='code ~/Documents/dotfiles/.zshrc'
# load the shell config
alias sz='source ~/.zshrc'
alias vi='nvim'
alias startdb='brew services start redis; brew services start mariadb;'
alias stopdb='brew services stop redis; brew services stop mariadb;'

# git aliases
alias gco='git checkout'
alias gp='git pull'

# node aliases
alias nr='npm run'
alias ncu='npx npm-check-updates -u' 

# util functions
function gituser () {
    echo "git name is now '`git config --local user.name`' and email is '`git config --local user.email`'"
}

function gitgohome () {
    git config --local user.email "arpitbatra123@gmail.com"
    gituser;
}

function gitgowork () {
    git config --local user.email "arpit.batra@postman.com"
    gituser;
}

# Source : https://danishpraka.sh/2018/07/06/git-branch-zsh.html
function git_branch() {
    branch=$(git symbolic-ref HEAD 2> /dev/null | awk 'BEGIN{FS="/"} {print $NF}')
    if [[ $branch == "" ]]; then
        :
    else
        echo '('$branch')'
    fi
}

# Required for showing git branch in prompt
setopt prompt_subst

PROMPT='%1~ $(git_branch) $ '

# `brew install zsh-autosuggestions` first
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# for quick path jumping using z. `brew install z` first
. /usr/local/etc/profile.d/z.sh

# project specific aliases
alias supdash='cd ~/Documents/postman-support-dashboard; fnm use 10; concurrently "node app.js" "npm run webpack-dev" '