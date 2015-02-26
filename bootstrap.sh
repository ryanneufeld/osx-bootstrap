#!/usr/bin/env bash
##
## OSX host bootsrap. Installs ansible, then homebrew, then runs our playbook
## to bootstrap the local machine. hosts includes the local machine only.
##
## my installed items are included, it is network engineer and security focused.
##
## questions, comments, concerns: chris[at]ipstuff.ca
##
##

set -e

## install pip with easy install.
##
echo 'Installing Ansible via pip'
if [[ ! -x `which pip` ]]; then
    sudo easy_install pip
fi

## set CLFAGS and CPPFLAGS, needed for some installs.
## not sure if this is needed
if [[ -x `which pip` && ! -x `which ansible` ]]; then
    sudo CFLAGS=-Qunused-arguments CPPFLAGS=-Qunused-arguments pip install ansible
fi

## Install homebrew if it does not exist
##
if [[ ! -x `which homebrew` ]]; then
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

## install caskroom
##
brew install caskroom/cask/brew-cask

## after all else, run ansible.
##
echo 'Running Ansible... see you on the other side'

if [[ -x `which ansible` ]]; then
    ansible-playbook -i hosts site.yml --ask-sudo-pass
fi
