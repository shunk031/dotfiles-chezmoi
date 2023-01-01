#!/usr/bin/env bash

set -Eeuo pipefail

function install_item2() {
    brew install --cask iterm2
}

function initialize_iterm2() {
    open -g "/Applications/iTerm.app" && sleep 2
}

function main() {
    install_item2
    initialize_iterm2
}

if [ ${#BASH_SOURCE[@]} = 1 ]; then
    main
fi
