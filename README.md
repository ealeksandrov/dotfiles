#	dotfiles

``` shell
git clone https://github.com/ealeksandrov/dotfiles.git && cd dotfiles
source macos.sh
source bootstrap.sh
```

### Manual install

* [Install Homebrew](http://brew.sh)
  * For multi-user install add alias: `alias brew='sudo -Hu firstuser brew'`
  * `brew bundle`
  * `xattr -cr ~/Library/QuickLook/*.qlgenerator`
* Install ruby
  * `ruby-install ruby 2.7`
* [Install oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh)
  * [powerlevel10k](https://github.com/romkatv/powerlevel10k)
  * [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
  * [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
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
