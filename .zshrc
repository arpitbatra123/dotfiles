# fnm
eval "$(fnm env --multi)"

# aliases
alias ls='ls -l'
# edit the zsh shell config
alias ez='code ~/Documents/dotfiles'
# load the shell config
alias sz='source ~/.zshrc'
alias vi='nvim'
alias startdb='brew services start redis; brew services start mysql@5.7'
alias stopdb='brew services stop redis; brew services stop mysql@5.7'
alias python='python3'

# git aliases
alias gco='git checkout'
alias gp='git pull'

# node aliases
alias nr='npm run'
alias ncu='npx npm-check-updates -u' 

# util functions
function gituser () {
    echo "git name is now '`git config --global user.name`' and email is '`git config --local user.email`'"
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
    branchref=$(git symbolic-ref HEAD 2> /dev/null)
    if [[ $branchref == "" ]]; then
        :
    else
    # Source: https://stackoverflow.com/questions/16623835/remove-a-fixed-prefix-suffix-from-a-string-in-bash
        branch=${branchref#"refs/heads/"}
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
alias supdash='cd ~/Documents/postman-support-dashboard; fnm use; concurrently "node app.js" "npm run webpack-dev"'

# use node version in .nvrmrc, if it exists
if test -f ".nvmrc"; then
    fnm use;
fi