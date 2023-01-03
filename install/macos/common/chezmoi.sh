#!/usr/bin/env bash

set -Eeuox pipefail

function install_chezmoi() {
    brew install chezmoi
}

function main() {
    install_chezmoi
}

if [ ${#BASH_SOURCE[@]} = 1 ]; then
    main
fi
