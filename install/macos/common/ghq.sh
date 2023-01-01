#!/usr/bin/env bash

set -Eeuo pipefail

function install_ghq() {
    brew install ghq
}

function main() {
    install_ghq
}

if [ ${#BASH_SOURCE[@]} = 1 ]; then
    main
fi
