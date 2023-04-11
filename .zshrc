# homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# ruby
eval "$(rbenv init -)"

# gpg
export GPG_TTY=$TTY

# Shortcuts
alias dev="cd ~/Documents/dev"
alias dl="cd ~/Downloads"
alias dt="cd ~/Desktop"

# Key bindings
bindkey "^[[1;3C" forward-word
bindkey "^[[1;3D" backward-word
