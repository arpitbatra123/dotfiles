# fnm
eval "$(fnm env)"

# Required for showing git branch in prompt
setopt prompt_subst

PROMPT='%1~ $(git_branch) $ '

# `brew install zsh-autosuggestions` first
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# auto completion for git-extras
source $(brew --prefix)/opt/git-extras/share/git-extras/git-extras-completion.zsh

# for quick path jumping using z. `brew install z` first
. /usr/local/etc/profile.d/z.sh

# use node version in .nvrmrc, if it exists
if test -f ".nvmrc"; then
    fnm use
fi

# source aliases and functions
source ~/Documents/dotfiles/.zsh-aliases
source ~/Documents/dotfiles/.zsh-functions

export PATH=~/Library/Python/3.7/bin:$PATH

# Added by serverless binary installer
export PATH="$HOME/.serverless/bin:$PATH"
