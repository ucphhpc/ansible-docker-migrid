# ansible-docker-migrid
A collection of tools for automating docker-migrid deployment on a physical or virtual machibe with ansible

## Prerequisites

* Install dependencies: `ansible-galaxy install -r requirements.yml`

## Installation

This repo can be used as a collection. Use the following command to install it

```
ansible-galaxy collection install https://github.com/ucphhpc/ansible-docker-migrid.git
```

or add it to your `requirements.yml` like this:

```
collections:
  - name: https://github.com/ucphhpc/ansible-docker-migrid.git
    type: git
    version: main
```

## Usage

Afterwards the roles can be used like this:

```
  roles:
    - ucphhpc.docker_migrid.setup_vars
    - ucphhpc.docker_migrid.migrid_pre_check
    ...
```

## Linting

To make the codebase clean, you can use `ansible-lint` to apply certain standards. A good example is using the `shared` profile.

```
# commit all previous changes in git to have a clean state

# run ansible-lint and let it autochange all findings
ansible-lint --profile shared --write all

# show changes
git diff
```
