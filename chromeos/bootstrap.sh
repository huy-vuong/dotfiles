#!/bin/bash

# Git
sudo apt install -y git

# From: https://gist.github.com/steinwaywhw/a4cd19cda655b8249d908261a62687f8
ghdeb () {
    curl -s "https://api.github.com/repos/${1}/releases/latest" \
        | grep "browser_download_url.*deb" \
        | cut -d : -f 2,3 \
        | tr -d \" \
        | wget -qi -
}

# Emacs
sudo apt install -y emacs

# Build Essential
sudo apt install -y build-essential

# PIP
sudo apt install -y python3-pip

# JupyterLab
pip3 install jupyterlab

# Node.js
# From: https://github.com/nodesource/distributions/blob/master/README.md#debinstall
curl -sL https://deb.nodesource.com/setup_current.x | sudo bash -
sudo apt install -y nodejs

# code-server for Visual Studio Code
# From: https://medium.com/samsung-internet-dev/making-vscode-run-faster-on-chromebooks-1591ee5e885b
curl -fsSL https://code-server.dev/install.sh | sh
systemctl --user enable --now code-server

# Rust
curl https://sh.rustup.rs -sSf | sh
source ~/.cargo/env
cargo install cargo-audit
cargo install cargo-edit
cargo install cargo-outdated
cargo install cargo-tree
cargo install cargo-update
cargo install cargo-watch
cargo install rust-script

# ripgrep
sudo apt install -y ripgrep

# fd
sudo apt install -y fd-find

# eza
cargo install eza
sudo wget -O /usr/local/share/zsh/site-functions/eza-completion.zsh https://raw.githubusercontent.com/ogham/eza/master/contrib/completions.zsh

# bat
ghdeb sharkdp/bat
sudo apt install -y ./bat_*_amd64.deb
rm ./bat_*.deb
rm ./bat-*.deb

# sd
cargo install sd

# GitHub
ghdeb cli/cli
sudo apt install -y ./gh_*_linux_amd64.deb
rm ./gh_*.deb

# Deta
curl -fsSL https://get.deta.dev/cli.sh | sh

# Zsh
sudo apt install -y zsh
sudo usermod -s "$(command -v zsh)" "${USER}"

# Oh My Zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
