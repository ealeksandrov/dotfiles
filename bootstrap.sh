#!/usr/bin/env bash

# Xcode Command Line Tools
if ! xcode-select --print-path &> /dev/null; then
    echo "installing XCode Command Line Tools..."
    xcode-select --install &> /dev/null
    until xcode-select --print-path &> /dev/null; do
        sleep 5
    done
    sudo xcodebuild -license
fi

# Homebrew
if ! which brew &> /dev/null; then
    echo "installing Homebrew..."
    NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    eval "$(/opt/homebrew/bin/brew shellenv)"  
fi
brew bundle
xattr -cr ~/Library/QuickLook/*.qlgenerator

# Ruby
brew install chruby ruby-install
ruby-install ruby 2.7

# set zsh as the user login shell
brew install zsh
BREWSHELL=$(brew --prefix)/bin/zsh
CURRENTSHELL=$(dscl . -read /Users/$USER UserShell | awk '{print $2}')
if [[ "$CURRENTSHELL" != "$BREWSHELL" ]]; then
  echo "setting newer Homebrew zsh as your shell"
  sudo dscl . -change /Users/$USER UserShell $SHELL $BREWSHELL
fi

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
# plugins
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# symlink dotfiles
echo "symlinking dotfiles..."
ln -sF $(pwd)/configs/zshrc ~/.zshrc
ln -sF $(pwd)/configs/alacritty.yml ~/.alacritty.yml
ln -sF $(pwd)/configs/tmux.conf ~/.tmux.conf

ln -sF $(pwd)/configs/gitattributes ~/.gitattributes
ln -sF $(pwd)/configs/gitconfig ~/.gitconfig
ln -sF $(pwd)/configs/gitignore-global ~/.gitignore-global

ln -sF $(pwd)/configs/finicky.js ~/.finicky.js
ln -sF $(pwd)/configs/gemrc ~/.gemrc
ln -sF $(pwd)/configs/lldbinit ~/.lldbinit

mkdir ~/.vim
ln -sF $(pwd)/configs/vimrc ~/.vim/vimrc

touch ~/.hushlogin

exec zsh

echo "✓ done"
