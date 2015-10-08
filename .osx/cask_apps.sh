brew update
brew install caskroom/cask/brew-cask
brew tap caskroom/versions

apps=(
  alfred
  apns-pusher
  colorpicker-skalacolor
  diskwave
  doxygen
  dropbox
  fabric
  gitup
  imageoptim
  iterm2
  itsycal
  kaleidoscope
  keepingyouawake
  reveal
  shortcat
  skitch
  skype
  spectacle
  steam
  textmate
  torbrowser
  transmission-remote-gui
  vlc
)

echo "installing apps..."
brew cask install --appdir="/Applications" ${apps[@]}

qls=(
  betterzipql
  provisionql
  qlmarkdown
  qlprettypatch
  qlstephen
  quicklook-csv
  quicklook-json
  suspicious-package
  webpquicklook
)

echo "installing QuickLook plugins..."
brew cask install ${qls[@]}

brew cask alfred link

brew cleanup
brew cask cleanup
