#	dotfiles

## How To Use It

``` shell
git clone https://github.com/ealeksandrov/dotfiles.git && cd dotfiles && source bootstrap.sh
```

## Clean system install

* Install Xcode
  * http://developer.apple.com/download/more/
* Clone dotfiles
* `./.macos`
* [Install Homebrew](http://brew.sh)
  * `brew bundle`
  * `xattr -cr ~/Library/QuickLook/*.qlgenerator`
* Install ruby
```sh
rbenv install -l
rbenv install 2.6.4
rbenv global 2.6.4
gem install bundler
```
* [Install oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh)
  * [powerlevel10k](https://github.com/romkatv/powerlevel10k)
  * [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
  * [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
* Settings -> Accessibility -> 3-finger drag
* Xcode settings
  * https://github.com/tonsky/FiraCode
  * https://github.com/tonyarnold/XcodeThemes
  * Show Xcode build time: `defaults write com.apple.dt.Xcode ShowBuildOperationDuration -bool YES`
* GPG import
  * `gpg --allow-secret-key-import --import`
* Alfred workflows
  * [tldr](https://github.com/cs1707/tldr-alfred)
  * [github](https://github.com/gharlan/alfred-github-workflow)
  * [convert](https://github.com/deanishe/alfred-convert)

## Author

Created and maintained by Evgeny Aleksandrov ([@ealeksandrov](http://twitter.com/ealeksandrov)).

Based on [mathiasbynens/dotfiles](https://github.com/mathiasbynens/dotfiles) and [gmarik/dotfiles](https://github.com/gmarik/dotfiles).

### License

MIT License. See the LICENSE file for more info.
