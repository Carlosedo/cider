#!/usr/bin/env bash

set -eu
set -o pipefail


echo "Installing Xcode Command Line Tools"
xcode-select --install