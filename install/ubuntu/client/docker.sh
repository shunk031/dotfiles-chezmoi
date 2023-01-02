#!/usr/bin/env bash

set -Eeuox pipefail

function uninstall_old_docker() {
    sudo apt-get -y remove docker docker-engine docker.io containerd runc
}

function setup_repository() {

    # Update the apt package index and install packages to allow apt to use a repository over HTTPS:
    sudo apt-get update
    sudo apt-get -y install \
        ca-certificates \
        curl \
        gnupg \
        lsb-release

    # Add Docker’s official GPG key:
    sudo mkdir -p /etc/apt/keyrings
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

    # Use the following command to set up the repository:
    echo \
        "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
        $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list >/dev/null
}

function install_docker_engine() {
    # Update the apt package index:
    sudo apt-get update

    # Install Docker Engine, containerd, and Docker Compose.
    sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin
}

function main() {
    uninstall_old_docker
    setup_repository
    install_docker_engine
}

if [ ${#BASH_SOURCE[@]} = 1 ]; then
    main
fi
