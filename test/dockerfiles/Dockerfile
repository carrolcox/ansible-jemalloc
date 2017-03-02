# Pull base image
FROM williamyeh/ansible:debian8

MAINTAINER Michał Czeraszkiewicz <contact@czerasz.com>

# Install the bats testing framework anisble role
RUN DEBIAN_FRONTEND=noninteractive \
    echo "===> Add bats Ansible role" &&\
    apt-get update &&\
    apt-get install -y git &&\
    git clone https://gitlab.com/czerasz/ansible-bats.git /etc/ansible/roles/czerasz.bats

