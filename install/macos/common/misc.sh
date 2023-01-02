#!/usr/bin/env bash

set -Eeuox pipefail

function install_brew_packages() {
    local packages=(
        "exa"
        "hugo"
        "htop"
        "shellcheck"
    )
    for package in "${packages[@]}"; do
        if ${CI}; then
            brew info "${package}"
        else
            brew install "${package}"
        fi
    done
}

function install_brew_cask_packages() {
    local packages=(
        "adobe-acrobat-reader"
        "google-chrome"
        "google-drive"
        "google-japanese-ime"
        "slack"
        "spotify"
        "vlc"
        "visual-studio-code"
        "zotero"
    )
    for package in "${packages[@]}"; do
        if ${CI}; then
            brew info "${package}"
        else
            brew install --cask "${package}"
        fi
    done
}

function main() {
    install_brew_packages
    install_brew_cask_packages
}

if [ ${#BASH_SOURCE[@]} = 1 ]; then
    main
fi
