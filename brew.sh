#!/usr/bin/env bash

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
ln -s "${BREW_PREFIX}/bin/gsha256sum" "${BREW_PREFIX}/bin/sha256sum"

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names
# Install a modern version of Bash.
brew install fish

# Switch to using brew-installed bash as default shell
if ! fgrep -q "${BREW_PREFIX}/bin/fish" /etc/shells; then
  echo "${BREW_PREFIX}/bin/fish" | sudo tee -a /etc/shells;
  chsh -s "${BREW_PREFIX}/bin/fish";
fi;

# Install `wget` with IRI support.
brew install wget --with-iri

# Install GnuPG to enable PGP-signing commits.
brew install gnupg
brew install libyubikey

# Install tooling
brew tap github/gh

brew install gh
brew install cmake
brew install libvterm
brew install ispell
brew install git
brew install git-lfs
brew install nvim
brew install nvm
brew install gzip
brew install pbzip2
brew install pigz
brew install htop
brew install zstd
brew install archey
brew install nmap
brew install thefuck
brew install awscli
brew install carthage
brew install circleci
brew install fontconfig
brew install tree
brew install openssh

# Instal languages
brew install clojure
brew install elixir
brew install emacs
brew install emacs-plus
brew install erlang
brew install cabal-install
brew install go
brew install opam
brew install ruby-build
brew install python
brew install go

# Install font tools.
brew tap bramstein/webfonttools
brew install sfnt2woff
brew install sfnt2woff-zopfli
brew install woff2

# Tap cask
brew tap homebrew/cask-fonts
brew tap homebrew/cask

# Install cask fonts
brew cask font-hack
brew cask font-source-code-pro
brew cask ttf-ancient-fonts
# Spacemacs pre-requisite
brew cask font-victor-mono

# Install by cask
brew cask docker
brew cask docker-toolbox
brew cask google-chrome
brew cask iterm2
brew cask slack
brew cask telegram-desktop
brew cask gpg-suite
brew cask insomnia
brew cask gimp
brew cask graphiql
brew cask keepassxc
brew cask spotify
brew cask pomello
brew cask flux
brew cask streamio
brew cask visual-studio-code
brew cask league-of-legends
brew cask zoho-mail
brew cask transmission

# Remove outdated versions from the cellar.
brew cleanup

# Node stuff
npm i -g yaml-language-server
npm install -g eslint tern babel-eslint eslint-plugin-react js-beautify
npm install -g prettier intelephense yarn import-js flow-bin  typescript
npm install -g typescript-language-server dockerfile-language-server-nodejs

# Python stuff
pip install --upgrade pip
pip install flake8
pip install autoflake
pip install importmagic epc
pip install wakatime

# HTML gem stuff
gem install specific_install
gem specific_install https://github.com/brigade/scss-lint.git
gem specific_install https://github.com/Sweetchuck/scss_lint_reporter_checkstyle.git
