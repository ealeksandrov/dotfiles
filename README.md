#	dotfiles

``` shell
git clone https://github.com/ealeksandrov/dotfiles.git && cd dotfiles
make setup
```

### Manual install

* `make macos`
* [Install Homebrew](http://brew.sh)
  * For multi-user install add alias: `alias brew='sudo -Hu firstuser brew'`
  * `brew bundle`
  * `xattr -cr ~/Library/QuickLook/*.qlgenerator`
* `make symlink`
* `defaults write wang.jianing.app.OpenInTerminal-Lite LiteDefaultTerminal Ghostty`
* Install Xcode
  * [Xcodes.app](https://github.com/RobotsAndPencils/XcodesApp)
  * settings
    * https://github.com/tonsky/FiraCode
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
