zmodload zsh/zprof
# Run zprof later to profile
# Required for showing git branch in prompt
setopt prompt_subst

PROMPT='%1~ $(git_branch) $ '

# `brew install zsh-autosuggestions` first
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
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

eval "$(/usr/local/bin/brew shellenv)"
# twilio autocomplete setup
eval
TWILIO_AC_ZSH_SETUP_PATH=/Users/arbatra/.twilio-cli/autocomplete/zsh_setup && test -f $TWILIO_AC_ZSH_SETUP_PATH && source $TWILIO_AC_ZSH_SETUP_PATH
