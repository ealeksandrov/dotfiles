# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# ruby
eval "$(rbenv init -)"

# gpg
export GPG_TTY=$TTY

# oh-my-zsh
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(aliases gh git httpie xcode zsh-autosuggestions zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

# Shortcuts
alias dev="cd ~/Documents/dev"
alias dl="cd ~/Downloads"
alias dt="cd ~/Desktop"

# Key bindings
bindkey "^[[1;3C" forward-word
bindkey "^[[1;3D" backward-word

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
