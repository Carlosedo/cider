#!/usr/bin/env bash

set -eu
set -o pipefail

# Test if commands exists, and if not, install them.
# Source: http://www.cyberciti.biz/faq/unix-linux-shell-find-out-posixcommand-exists-or-not/
command -v brew > /dev/null || \
	ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install caskroom/cask/brew-cask

# Install pip using brew to don't need sudo to use pip install
command -v pip > /dev/null || \
	brew install python

command -v cider > /dev/null || \
	(pip install cider && \
	pip install click==4.1) # https://github.com/msanders/cider/pull/30


# Test if .cider folder exists or download it from github
[ -d ~/.cider ] || git clone git@github.com:carlosedo/cider-config.git ~/.cider


cider restore