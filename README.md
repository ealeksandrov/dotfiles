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
* [homebrew](http://brew.sh)
* [rvm](https://rvm.io)
* .osx/brew_apps.sh
* .osx/cask_apps.sh
* .osx/osx
* iTerm2 settings: [Esc+: b][Esc+: f] + [peppermint theme](https://github.com/dotzero/iTerm-2-Peppermint)
* Xcode plugins
  * [DerivedData Exterminator](https://github.com/kattrali/deriveddata-exterminator)
  * [CATweaker](https://github.com/keefo/CATweaker)
  * [FuzzyAutocomplete](https://github.com/FuzzyAutocomplete/FuzzyAutocompletePlugin)
  * [GitDiff](https://github.com/johnno1962/GitDiff)
  * [KSImageNamed](https://github.com/ksuther/KSImageNamed-Xcode)
  * [ColorSenseRainbow](https://github.com/NorthernRealities/ColorSenseRainbow)
  * [Polychromatic](https://github.com/kolinkrewinkel/Polychromatic)
  * [VVDocumenter](https://github.com/onevcat/VVDocumenter-Xcode)
  * [XCActionBar](https://github.com/pdcgomes/XCActionBar)
  * [You Can Do It!](https://github.com/orta/You-Can-Do-It)
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

Based on [gmarik/dotfiles](https://github.com/gmarik/dotfiles).

###  License

Copyright (c) 2015 Evgeny Aleksandrov

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
