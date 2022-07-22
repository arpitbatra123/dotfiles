zmodload zsh/zprof
# Run zprof later to profile
# fnm
export PATH=/home/arpit/.fnm:$PATH
eval "$(fnm env)"

# Required for showing git branch in prompt
setopt prompt_subst

PROMPT='%1~ $(git_branch) $ '

# `brew install zsh-autosuggestions` first
# source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
# git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
# source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# auto completion for git-extras
# source $(brew --prefix)/opt/git-extras/share/git-extras/git-extras-completion.zsh

# for quick path jumping using z. `brew install z` first
# . /usr/local/etc/profile.d/z.sh

# use node version in .nvrmrc, if it exists
if test -f ".nvmrc"; then
    fnm use
fi

# source aliases and functions
source ~/Documents/dotfiles/.zsh-aliases
source ~/Documents/dotfiles/.zsh-functions

# twilio related stuff
# eval TWILIO_AC_ZSH_SETUP_PATH=/Users/arbatra/.twilio-cli/autocomplete/zsh_setup && test -f TWILIO_AC_ZSH_SETUP_PATH && source $TWILIO_AC_ZSH_SETUP_PATH
# twilio autocomplete setupeval
# export PATH="/Users/arbatra/.jenv/shims:${PATH}"
# export PATH="$HOME/.jenv/bin:$PATH"
# eval "$(jenv init -)"

export OWL="/Users/arbatra/Documents/owl"
eval "$("$OWL/bin/owl" init -)"
