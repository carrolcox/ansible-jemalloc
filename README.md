# Ansible Jemalloc Role

A role used to install jemalloc from source.

## Installation

Install the role with:

```
git clone https://gitlab.com/czerasz/ansible-jemalloc.git /etc/ansible/roles/czerasz.jemalloc
```

## Usage

```
---

- name: Add jemalloc support
  hosts: all
  roles:
    - role: czerasz.jemalloc
      vars:
        version: 4.5.0
```

## Role Variables

| name | description | default |
| --- | --- | --- |
| `version` | jemalloc version | `4.5.0` |

# Test

Requirements:

- [Docker Compose](https://docs.docker.com/compose/)

Run tests with:

```
docker-compose -f test/docker-compose.yml up
```
