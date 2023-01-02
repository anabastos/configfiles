#!/usr/bin/env bash

# echo "source ~/bash_profile" >> ~/zshrc

# Install xcode
xcode-select –install
sudo xcodebuild -license accept

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
brew install npm
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

# Install cask fonts
brew install font-hack --cask
brew install font-source-code-pro --cask
brew install ttf-ancient-fonts --cask
# Spacemacs pre-requisite
brew install font-victor-mono --cask

# Install by cask
brew install docker --cask
brew install docker-toolbox --cask
brew install slack --cask
brew install telegram-desktop --cask
brew install gpg-suite --cask
brew install insomnia --cask
brew install gimp --cask
brew install graphiql --cask
brew install keepassxc --cask
brew install spotify --cask
brew install pomello --cask
brew install flux --cask
brew install streamio --cask
brew install visual-studio-code --cask
brew install zoho-mail --cask
brew install transmission --cask

# Remove outdated versions from the cellar.
brew cleanup

# Node stuff
npm i -g yaml-language-server
npm install -g eslint tern babel-eslint eslint-plugin-react js-beautify
npm install -g prettier intelephense yarn import-js flow-bin  typescript
npm install -g typescript-language-server dockerfile-language-server-nodejs

# Python stuff
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python3 get-pip.py
pip install --upgrade pip
pip install flake8
pip install autoflake
pip install importmagic epc
pip install wakatime

# HTML gem stuff
gem install specific_install
gem specific_install https://github.com/brigade/scss-lint.git
gem specific_install https://github.com/Sweetchuck/scss_lint_reporter_checkstyle.git

# OMF theme
curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish
omf install https://github.com/queenkjuul/omf-pride-cat
omf theme pride-cat

# Install emacs
git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
emacs
