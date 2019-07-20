#!/bin/bash

if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root"
   exit 1
fi

apt update
apt upgrade -y

# System.
apt install -y htop tmux tree most

# Network.
apt install -y curl whois net-tools apt-transport-https ca-certificates gnupg-agent software-properties-common

# Security.
apt install -y keepassxc

# Development.
apt install -y cmake git nodejs npm postgresql-client-10 python-pip python3-pip python-virtualenv direnv python3-tk
snap install go --classic
snap install protobuf --classic
snap install google-cloud-sdk --classic
snap install heroku --classic
snap install hugo --channel=extended
snap install docker
snap install sublime-text --classic
# Git LFS.
curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | bash
# Yarn.
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
apt update && apt install -y yarn
# pgAdmin 4.
curl https://www.postgresql.org/media/keys/ACCC4CF8.asc | apt-key add - && \
sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt/ $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list' && \
apt update && apt install -y pgadmin4
# IDEs.
snap install goland --classic
snap install webstorm --classic
snap install pycharm-professional --classic
snap install intellij-idea-ultimate --classic
snap install clion --classic
snap install datagrip --classic

# Chrome.
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb && \
dpkg -i google-chrome-stable_current_amd64.deb

# Appearance.
# Tweak.
add-apt-repository universe && \
apt update && \
apt install -y gnome-tweak-tool
apt install -y gnome-shell-extensions
apt install -y chrome-gnome-shell
# Icons.
add-apt-repository ppa:numix/ppa && \
apt update && \
apt install -y numix-icon-theme-circle
