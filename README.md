#	dotfiles

``` shell
git clone https://github.com/ealeksandrov/dotfiles.git && cd dotfiles && source bootstrap.sh
```

* `source macos.sh`
* [Install Homebrew](http://brew.sh)
  * `brew bundle`
  * `xattr -cr ~/Library/QuickLook/*.qlgenerator`
* Install ruby
```sh
rbenv install $(rbenv install -l | grep -v - | head -1)
rbenv global $(rbenv install -l | grep -v - | head -1)
gem install bundler
```
* [Install oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh)
  * [powerlevel10k](https://github.com/romkatv/powerlevel10k)
  * [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
  * [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
* Settings -> Accessibility -> Pointer Control -> Trackpad Options... -> 3-finger drag
* Install Xcode
  * [Xcodes.app](https://github.com/RobotsAndPencils/XcodesApp)
  * settings
    * https://github.com/tonsky/FiraCode
      * `brew tap homebrew/cask-fonts`
      * `brew install --cask font-fira-code`
    * https://github.com/tonyarnold/XcodeThemes
    * Show Xcode build time: `defaults write com.apple.dt.Xcode ShowBuildOperationDuration -bool YES`

## Author

Created and maintained by Evgeny Aleksandrov ([@ealeksandrov](http://twitter.com/ealeksandrov)).

Based on:
- [mathiasbynens/dotfiles](https://github.com/mathiasbynens/dotfiles)
- [gmarik/dotfiles](https://github.com/gmarik/dotfiles)
- [atomantic/dotfiles](https://github.com/atomantic/dotfiles)

### License

MIT License. See the LICENSE file for more info.
