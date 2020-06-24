#!/usr/bin/env bash

set -eu
set -o pipefail

# Test if commands exists, and if not, install them.
# Source: http://www.cyberciti.biz/faq/unix-linux-shell-find-out-posixcommand-exists-or-not/
command -v brew > /dev/null || \
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
# Install pip using brew to don't need sudo to use pip install
command -v pip > /dev/null || \
	(brew install pyenv && \
    pyenv install 3.8.3 && \
    pyenv global 3.8.3)

command -v cider > /dev/null || \
	pip install cider


# Test if .cider folder exists or download it from github
[ -d ~/.cider ] || git clone git@github.com:carlosedo/dotfiles.git ~/.cider

# git submodule
cd ~/.cider && git submodule init && git submodule update


cider restore