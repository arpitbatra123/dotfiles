# fnm
export PATH=/home/arpit/.fnm:$PATH
eval "$(fnm env)"

export OWL="/Users/arbatra/Documents/owl"
eval "$("$OWL/bin/owl" init -)"

export PATH="/Users/arbatra/.jenv/shims:${PATH}"
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

eval "$(/usr/local/bin/brew shellenv)"

# twilio cli
eval TWILIO_AC_ZSH_SETUP_PATH=/Users/arbatra/.twilio-cli/autocomplete/zsh_setup && test -f TWILIO_AC_ZSH_SETUP_PATH && source $TWILIO_AC_ZSH_SETUP_PATH
twilio autocomplete setupeval
