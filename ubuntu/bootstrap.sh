#!/bin/bash

# cURL
sudo apt install -y curl

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

# Zsh
sudo apt install -y zsh
sudo usermod -s "$(command -v zsh)" "${USER}"

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

# Visual Studio Code - https://code.visualstudio.com/
sudo snap install code-insiders --classic

# Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs >/tmp/rustup.sh && (yes 1 | sh /tmp/rustup.sh)
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

# exa
cargo install exa
sudo wget -O /usr/local/share/zsh/site-functions/exa-completion.zsh https://raw.githubusercontent.com/ogham/exa/master/contrib/completions.zsh

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

# Docker
sudo apt install -y apt-transport-https ca-certificates curl gnupg-agent software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt update
sudo apt install -y docker-ce docker-ce-cli containerd.io
sudo docker run hello-world

# Oh My Zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Palenight GNOME Terminal Theme
bash -c  "$(wget -qO- https://git.io/vQgMr)"

# Java - https://adoptopenjdk.net/installation.html
sudo apt install wget apt-transport-https gnupg
wget -qO - https://adoptopenjdk.jfrog.io/adoptopenjdk/api/gpg/key/public | sudo apt-key add -
echo "deb https://adoptopenjdk.jfrog.io/adoptopenjdk/deb focal main" | sudo tee /etc/apt/sources.list.d/adoptopenjdk.list
sudo apt update
sudo apt install adoptopenjdk-15-openj9
