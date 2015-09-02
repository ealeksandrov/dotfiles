brew update

apps=(
  apple-gcc42
  autoconf
  autojump
  automake
  bash-completion
  brew-cask
  class-dump
  coreutils
  doxygen
  findutils
  freetype
  git
  git-extras
  httpie
  imagemagick --with-webp
  jpeg
  libgpg-error
  libksba
  libpng
  libtiff
  libtool
  libxml2
  libxslt
  libyaml
  lynx
  python
  mogenerator
  nmap
  node
  objc-run
  openssl
  ossp-uuid
  pigz
  pkg-config
  readline
  rename
  spark
  sqlmap
  tree
  wget
  xctool
  xz
  zopfli
)

echo "installing apps..."
brew install ${apps[@]}

brew cleanup
