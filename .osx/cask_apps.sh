brew update
brew install caskroom/cask/brew-cask
brew tap caskroom/versions

apps=(
  alfred2	
  apns-pusher
  colorpicker-skalacolor
  diskwave
  doxygen
  dropbox
  fabric
  firefox
  gitup
  google-chrome
  httpie
  imageoptim
  iterm
  itsycal
  kaleidoscope
  keepingyouawake
  pixel-winch
  reveal
  shortcat
  skitch
  skype
  slack
  spectacle
  steam
  textmate
  torbrowsertransmission-remote-gui
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
	webp-quicklook
)

echo "installing QuickLook plugins..."
brew cask install ${qls[@]}

brew cask alfred link

brew cleanup
brew cask cleanup
