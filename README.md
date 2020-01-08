# Ansible Jemalloc Role

A role used to install _jemalloc_ from source and export `jemalloc_lib` variable

## Installation

Install the role with:

```shell
git clone https://github.com/crrlcx/ansible-jemalloc.git /etc/ansible/roles/ansible-jemalloc
```

or

```shell
git clone https://gitlab.com/crrlcx/ansible-jemalloc.git /etc/ansible/roles/ansible-jemalloc
```

## Usage

```yml
---
- name: Add jemalloc support
  hosts: all
  roles:
    - role: ansible-jemalloc
      jemalloc_version: 5.2.1
```

## Role Variables

| name               | description      | default |
| ------------------ | ---------------- | ------- |
| `jemalloc_version` | jemalloc version | `5.2.1` |

## Test

Requirements:

- [Docker Compose](https://docs.docker.com/compose/)

Run tests with:

```shell
docker-compose -f test/docker-compose.yml up
```
