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

# set zsh as the user login shell
brew install zsh
BREWSHELL=$(brew --prefix)/bin/zsh
CURRENTSHELL=$(dscl . -read /Users/$USER UserShell | awk '{print $2}')
if [[ "$CURRENTSHELL" != "$BREWSHELL" ]]; then
  echo "setting newer Homebrew zsh as your shell"
  sudo dscl . -change /Users/$USER UserShell $SHELL $BREWSHELL
fi

exec zsh

echo "✓ bootstrap done"
