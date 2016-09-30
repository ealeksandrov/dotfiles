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
  * [AdBlock Plus](https://adblockplus.org/safari)
  * [NoMoreItunes](http://nomoreitunes.einserver.de)
* install Xcode
* `xcode-select --install`
* clone dotfiles
* `git config --global core.attributesfile $HOME/.gitattributes`
* [homebrew](http://brew.sh)
* [rvm](https://rvm.io)
* .osx/brew_apps.sh
* .osx/cask_apps.sh
* .osx/osx
* iTerm2 settings: [Esc+: b][Esc+: f] + [peppermint theme](https://github.com/dotzero/iTerm-2-Peppermint)
* Xcode plugins
  * [DerivedData Exterminator](https://github.com/kattrali/deriveddata-exterminator)
  * [CATweaker](https://github.com/keefo/CATweaker)
  * [GitDiff](https://github.com/johnno1962/GitDiff)
  * [KSImageNamed](https://github.com/ksuther/KSImageNamed-Xcode)
  * [ColorSenseRainbow](https://github.com/NorthernRealities/ColorSenseRainbow)
  * [Polychromatic](https://github.com/kolinkrewinkel/Polychromatic)
  * [VVDocumenter](https://github.com/onevcat/VVDocumenter-Xcode)
  * [XCActionBar](https://github.com/pdcgomes/XCActionBar)
  * [You Can Do It!](https://github.com/orta/You-Can-Do-It)
  * Show Xcode build time: `defaults write com.apple.dt.Xcode ShowBuildOperationDuration -bool YES`
* Alfred
  * [iTerm support](https://github.com/stuartcryan/custom-iterm-applescripts-for-alfred)
  * about_this_mac
  * audio_switch
  * eggtimer_v2.0_final
  * menu_bar_search
  * Recent Downloads
  * alfredwl
  * units_v_0_6
  * translate

## Author

This example was created by Evgeny Aleksandrov ([@EAleksandrov](http://twitter.com/EAleksandrov)).

Based on [mathiasbynens/dotfiles](https://github.com/mathiasbynens/dotfiles) and [gmarik/dotfiles](https://github.com/gmarik/dotfiles).

### License

MIT License. See the LICENSE file for more info.
