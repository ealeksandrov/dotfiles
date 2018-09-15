#	dotfiles

## How To Use It

``` shell
git clone --bare git://github.com/ealeksandrov/dotfiles.git ~/dotfiles.git
#setup bash alias
alias .G="git --git-dir=$HOME/dotfiles.git --work-tree=$HOME/"

# commit original files in orig branch for backup
# WARNING: backup what's going to be overwritten
.G status -s -uno   # review changelist
.G checkout -b original_files
.G commit -a  -m 'original files'
.G checkout master
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
  * `rbenv install -l`
  * `rbenv install 2.4.2`
  * `rbenv global 2.4.2`
  * `gem install bundler`
* Change shell
  * `echo '/usr/local/bin/bash' | sudo tee -a /etc/shells;`
  * `chsh -s /usr/local/bin/bash;`
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
* [Reveal](https://revealapp.com/download/)
* [Soulver](http://acqualia.com/soulver/)
* [Cd To](https://github.com/ealeksandrov/cdto)

## Author

Created and maintained by Evgeny Aleksandrov ([@EAleksandrov](http://twitter.com/EAleksandrov)).

Based on [mathiasbynens/dotfiles](https://github.com/mathiasbynens/dotfiles) and [gmarik/dotfiles](https://github.com/gmarik/dotfiles).

### License

MIT License. See the LICENSE file for more info.
