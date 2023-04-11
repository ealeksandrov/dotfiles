# homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# ruby
eval "$(rbenv init -)"

# gpg
export GPG_TTY=$TTY

# oh-my-zsh
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(aliases gh git httpie xcode zsh-autosuggestions zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

# Shortcuts
alias dev="cd ~/Documents/dev"
alias dl="cd ~/Downloads"
alias dt="cd ~/Desktop"

# Key bindings
bindkey "^[[1;3C" forward-word
bindkey "^[[1;3D" backward-word
