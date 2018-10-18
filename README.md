# Ansible Jemalloc Role

A role used to install jemalloc from source.

## Installation

Install the role with:

```
git clone https://gitlab.com/mr.jsdive/ansible-jemalloc.git /etc/ansible/roles/ansible-jemalloc
```

## Usage

```
---

- name: Add jemalloc support
  hosts: all
  tasks:
    - inclede_role:
        name: ansible-jemalloc
      vars:
        version: 5.1.0
```

## Role Variables

| name | description | default |
| --- | --- | --- |
| `version` | jemalloc version | `5.1.0` |

# Test

Requirements:

- [Docker Compose](https://docs.docker.com/compose/)

Run tests with:

```
docker-compose -f test/docker-compose.yml up
```
