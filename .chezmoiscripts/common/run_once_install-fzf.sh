#!/usr/bin/env bash

set -Eeuo pipefail

function install_fzf() {
    local fzf_dir="$1"
    local install_fzf_path="${fzf_dir%/}/install"

    "${install_fzf_path}" --key-bindings --completion --no-update-rc
}

function main() {
    local fzf_dir="${HOME%/}/.fzf"

    install_fzf "${fzf_dir}"
}

if [ ${#BASH_SOURCE[@]} = 1 ]; then
    main
fi
