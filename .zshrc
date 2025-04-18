zmodload zsh/zprof
# Run zprof later to profile
# Required for showing git branch in prompt
setopt prompt_subst

PROMPT='%1~ $(git_branch) $ '

# `brew install zsh-autosuggestions` first
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
# git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
# source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# auto completion for git-extras
# source $(brew --prefix)/opt/git-extras/share/git-extras/git-extras-completion.zsh

# for quick path jumping using z. `brew install z` first
# . /usr/local/etc/profile.d/z.sh

# auto switch node versions based on .nvmrc
eval "$(fnm env --use-on-cd)"

# source aliases and functions
source ~/Documents/dotfiles/.zsh-aliases
source ~/Documents/dotfiles/.zsh-functions


# pnpm
export PNPM_HOME="/Users/arbatra/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end

# fnm
FNM_PATH="/Users/arpit/Library/Application Support/fnm"
if [ -d "$FNM_PATH" ]; then
  export PATH="/Users/arpit/Library/Application Support/fnm:$PATH"
  eval "`fnm env`"
fi
