#!/usr/bin/env bash

set -eu
set -o pipefail

echo "Installing pip packages:"

for pip in \
	"ansible" \
	"virtualenvwrapper" \
    "pygments" \
	; do
	echo "- "${pip}
	pip install ${pip} > /dev/null # hide all stdout but show errors
done

exit 0