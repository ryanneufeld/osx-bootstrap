Ansible For OSX system bootstrap
===================================

Runs on the local host, doesn't need ssh. This makes it faster.

Requires ansible and any local dependencies you may require. (SSH Keys for github, etc). note that bootstrap.sh will install ansible+homebrew for you. 

This is best run on fresh OSX machines.

I've found that a bunch of the python modules didn't build first go around, once I ran as root with:
CFLAGS=-Qunused-arguments 
CPPFLAGS=-Qunused-arguments

it worked...

todo
----
- playbook to clone all of my repos for work and personal projects.

Comments, Questions, Concerns: chris[at]ipstuff[dot]ca

Thanks to Matthew Valentine-House: http://www.eightbitraptor.com/post/bootstrapping-osx-ansible for the template and the inspiration to finally do this.
