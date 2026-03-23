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

# source aliases and functions
source ~/Documents/dotfiles/.zsh-aliases
source ~/Documents/dotfiles/.zsh-functions


# nvm (lazy-loaded for fast shell startup)
export NVM_DIR="$HOME/.nvm"
nvm() {
  unset -f nvm node npm npx 2>/dev/null
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
  [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
  nvm "$@"
}
node() { nvm --version > /dev/null 2>&1; unset -f node 2>/dev/null; command node "$@"; }
npm() { nvm --version > /dev/null 2>&1; unset -f npm 2>/dev/null; command npm "$@"; }
npx() { nvm --version > /dev/null 2>&1; unset -f npx 2>/dev/null; command npx "$@"; }



# bun completions
[ -s "/Users/arpitbatra/.bun/_bun" ] && source "/Users/arpitbatra/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
export PATH="/Users/arpitbatra/.local/bin:$PATH"
