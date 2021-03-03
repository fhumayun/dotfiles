#!/usr/bin/env bash

set -e

# Dotfiles' project root directory
ROOTDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
# Host file location
HOSTS="$ROOTDIR/hosts"
# Main playbook
PLAYBOOK="$ROOTDIR/dotfiles.yml"

# Installs ansible
sudo apt-get update && sudo apt-get install -y ansible

# Runs Ansible playbook using our user.
sudo ansible-playbook -i "$HOSTS" "$PLAYBOOK" --ask-become-pass

exit 0