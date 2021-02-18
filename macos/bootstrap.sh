# Git
git

# Homebrew - https://brew.sh/
sudo /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval $(/opt/homebrew/bin/brew shellenv)' >> /Users/${USER}/.zprofile
eval $(/opt/homebrew/bin/brew shellenv)

# Oh My Zsh - https://ohmyz.sh/
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# wget - https://www.gnu.org/software/wget/
brew install wget

# exa - https://the.exa.website/
brew install exa

# rg - https://github.com/BurntSushi/ripgrep
brew install ripgrep

# bat - https://github.com/sharkdp/bat
brew install bat

# fd - https://github.com/sharkdp/fd
brew install fd

# sd - https://github.com/chmln/sd
brew install sd

# Node.js - https://nodejs.org/
brew install node

# OpenJDK -
brew install openjdk

# Emacs - https://emacsformacosx.com/
# Go to that link and install it from there. Don't use `brew`.

# GitHub - https://cli.github.com/
brew install gh

# ImageMagick - https://imagemagick.org/
brew install imagemagick

# Go - https://golang.org/
brew install go
go get -v golang.org/x/lint/golint
go get -v golang.org/x/tools/gopls
go get -v golang.org/x/tools/cmd/goimports
go get -v github.com/go-delve/delve/cmd/dlv
go get -v github.com/ramya-rao-a/go-outline
go get -v github.com/uudashr/gopkgs/v2/cmd/gopkgs