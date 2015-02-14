#!/usr/bin/env bash
set -e

echo 'Installing Ansible via pip'

if [[ ! -x `which pip` ]]; then
    sudo easy_install pip
fi

if [[ -x `which pip` && ! -x `which ansible` ]]; then
    sudo CFLAGS=-Qunused-arguments CPPFLAGS=-Qunused-arguments pip install ansible
fi

echo 'Running Ansible... see you on the other side'

if [[ -x `which ansible` ]]; then
    ansible-playbook -i hosts site.yml --ask-sudo-pass
fi
