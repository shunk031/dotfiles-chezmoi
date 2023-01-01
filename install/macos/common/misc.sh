#!/usr/bin/env bash

set -Eeuo pipefail

function install_misc() {
    brew install exa shellcheck hugo
}

function main() {
    install_misc
}

if [ ${#BASH_SOURCE[@]} = 1 ]; then
    main
fi
