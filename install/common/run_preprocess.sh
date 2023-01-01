#!/usr/bin/env bash

set -Eeuo pipefail

function main() {
    echo "$(chezmoi source-path)/install/common/fzf.sh"
    echo "$(chezmoi source-path)/"
}

main
