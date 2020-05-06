# fnm
eval "$(fnm env --multi)"

# Required for showing git branch in prompt
setopt prompt_subst

PROMPT='%1~ $(git_branch) $ '

# `brew install zsh-autosuggestions` first
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# for quick path jumping using z. `brew install z` first
. /usr/local/etc/profile.d/z.sh

# use node version in .nvrmrc, if it exists
if test -f ".nvmrc"; then
    fnm use
fi

# source aliases and functions
source .zsh-aliases
source .zsh-functions
