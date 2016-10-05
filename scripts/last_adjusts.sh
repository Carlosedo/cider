#!/usr/bin/env bash

set -eu
set -o pipefail


echo "Creating symlink for sublime"
ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" ~/bin/subl

echo "Installing Xcode Command Line Tools"
xcode-select --install