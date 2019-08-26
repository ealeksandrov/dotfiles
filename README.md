#	dotfiles

## How To Use It

``` shell
git clone https://github.com/ealeksandrov/dotfiles.git && cd dotfiles && source bootstrap.sh
```

## Clean system install

* Safari extensions
  * [uBlock Origin](https://github.com/el1t/uBlock-Safari)
  * [NoMoreItunes](http://nomoreitunes.einserver.de)
  * [BackTrack](http://sidetree.com/extensions.html#BackTrack)
* Install Xcode
  * `xcode-select --install`
* clone dotfiles
* `./.macos`
* [Install Homebrew](http://brew.sh)
* `brew bundle`
* ruby
```
rbenv install -l
rbenv install 2.6.3
rbenv global 2.6.3
gem install bundler
```
* Change shell
```
echo "$(brew --prefix)/bin/bash" | sudo tee -a /etc/shells;
chsh -s "$(brew --prefix)/bin/bash";
```
* Settings -> Accessibility -> 3-finger drag
* https://github.com/adobe-fonts/source-code-pro
* iTerm settings
  * load preferences from file
  * install [peppermint theme](https://github.com/dotzero/iTerm-2-Peppermint)
* Xcode settings
  * https://github.com/tonyarnold/XcodeThemes
  * Show Xcode build time: `defaults write com.apple.dt.Xcode ShowBuildOperationDuration -bool YES`
* GPG git signing (https://github.com/pstadler/keybase-gpg-github)
  * `keybase pgp export | gpg --import`
  * `keybase pgp export --secret | gpg --allow-secret-key-import --import`
* Alfred workflows
  * [tldr](https://github.com/cs1707/tldr-alfred)
  * [github](https://github.com/gharlan/alfred-github-workflow)
  * [convert](https://github.com/deanishe/alfred-convert)
  * [safari-assistant](https://github.com/deanishe/alfred-safari-assistant)

## Author

Created and maintained by Evgeny Aleksandrov ([@EAleksandrov](http://twitter.com/EAleksandrov)).

Based on [mathiasbynens/dotfiles](https://github.com/mathiasbynens/dotfiles) and [gmarik/dotfiles](https://github.com/gmarik/dotfiles).

### License

MIT License. See the LICENSE file for more info.
