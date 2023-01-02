#!/usr/bin/env bash

set -Eeuox pipefail

declare -r DOTFILES_LOGO="
                          /$$                                      /$$
                         | $$                                     | $$
     /$$$$$$$  /$$$$$$  /$$$$$$   /$$   /$$  /$$$$$$      /$$$$$$$| $$$$$$$
    /$$_____/ /$$__  $$|_  $$_/  | $$  | $$ /$$__  $$    /$$_____/| $$__  $$
   |  $$$$$$ | $$$$$$$$  | $$    | $$  | $$| $$  \ $$   |  $$$$$$ | $$  \ $$
    \____  $$| $$_____/  | $$ /$$| $$  | $$| $$  | $$    \____  $$| $$  | $$
    /$$$$$$$/|  $$$$$$$  |  $$$$/|  $$$$$$/| $$$$$$$//$$ /$$$$$$$/| $$  | $$
   |_______/  \_______/   \___/   \______/ | $$____/|__/|_______/ |__/  |__/
                                           | $$
                                           | $$
                                           |__/
                     *** This is dotfiles setup script ***
"

function initialize_dotfiles() {
    sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply https://github.com/shunk031/dotfiles-chezmoi
}

function main() {
    echo "$DOTFILES_LOGO"

    initialize_dotfiles
}

main "$@"
