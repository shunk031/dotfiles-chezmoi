#!/usr/bin/env bash

set -Eeuox pipefail

function install_misc() {
    brew install \
        exa \
        hugo \
        htop \
        shellcheck

    brew install --cask \
        adobe-acrobat-reader \
        google-chrome \
        google-drive \
        google-japanese-ime \
        slack \
        spotify \
        vlc \
        visual-studio-code \
        zotero
}

function main() {
    install_misc
}

if [ ${#BASH_SOURCE[@]} = 1 ]; then
    main
fi
