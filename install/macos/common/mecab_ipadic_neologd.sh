#!/usr/bin/env bash

set -Eeuo pipefail

function install_mecab_ipadic_neologd_requirements() {
    brew install git curl xz
}
