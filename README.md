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

Another way is to use collections in the playbook, like this example of start-migrid.yml:
```
- name: Start migrid
  hosts:
    - all
  collections:
    - ucphhpc.docker_migrid
  gather_facts: true
  become: true
  roles:
    - setup_vars
    - startup_encrypt_state
    - start_promtail
    - start_containers    
```

Typical usage would be:

* First run ```ansible-galaxy install -f -r requirements.yml```
* Make sure system is stopped and mountpoints are unmounted: ```ansible-playbook -i inventory.yml -l host.example.com stop-migrid.yml```
* Now run the installation: ```ansible-playbook --ask-vault-pass -i inventory.yml -l host.example.com install-migrid.yml```
* Last start migrid: ```ansible-playbook --ask-vault-pass -i inventory.yml -l host.example.com start-migrid.yml```

You only need ```--ask-vault-pass``` option on start-migrid.yml if you use encrypted state directory.

Example of a ansible.cfg:
```
[defaults]
collections_paths = ./collections/ansible_collections
[ssh_connection]
pipelining = True
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
