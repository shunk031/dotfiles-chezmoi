#!/usr/bin/env bash

set -Eeuox pipefail

function install_golang() {
    brew link --overwrite go || brew install go
}

function main() {
    install_golang
}

if [ ${#BASH_SOURCE[@]} = 1 ]; then
    main
fi
