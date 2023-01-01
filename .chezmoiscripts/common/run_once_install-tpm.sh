#!/usr/bin/env bash

set -Eeuox pipefail

function install_tpm() {
    local dir="$1"

    local url="https://github.com/tmux-plugins/tpm"

    rm -rf "${dir}"
    git clone "${url}" "${dir}"
}

function install_tpm_plugins() {
    local dir="$1"
    local cmd="${dir%/}/scripts/install_plugins.sh"

    "${cmd}"
}

function install_tmux_mem_cpu_load() {
    local tmux_mem_cpu_load_url="https://github.com/thewtex/tmux-mem-cpu-load.git"

    local tmp_dir
    tmp_dir="$(mktemp -d /tmp/tmux-mem-cpu-load-XXXXXXXXXX)"

    git clone "${tmux_mem_cpu_load_url}" "${tmp_dir}"
    cd "${tmp_dir}"
    cmake . -DCMAKE_INSTALL_PREFIX="${HOME%/}/.local/"
    make
    make install
}

function main() {
    local dir="${HOME%/}/.tmux/plugins/tpm"

    install_tpm "${dir}"
    install_tpm_plugins "${dir}"

    install_tmux_mem_cpu_load
}

if [ ${#BASH_SOURCE[@]} = 1 ]; then
    main
fi
