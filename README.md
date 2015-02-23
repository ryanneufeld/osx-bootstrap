Ansible For OSX system bootstrap
===================================

Runs on the local host, doesn't need ssh. This makes it faster.

This is best run on fresh OSX machines.

requirements:
----
- git
- xcode command line tools. (OSX should prompt to install when you run git for the first time.
- private key in ~/.ssh/ (required if you use public key auth to github).
- python (OSX default version is OK)

note: ansible/homebrew/caskroom will be installed by bootstrap.sh

usage:
----
```sh
./bootstrap.sh
```


todo
----
- playbook to clone all of my repos for work and personal projects.

Comments, Questions, Concerns: chris[at]ipstuff[dot]ca

Thanks to Matthew Valentine-House: http://www.eightbitraptor.com/post/bootstrapping-osx-ansible for the template and the inspiration to finally do this.
