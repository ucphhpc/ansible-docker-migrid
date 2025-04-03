# setup encrypt state

This role will setup gocryptfs file system for use when `migrid_encrypt_state` is set as `true`.

It will initialize the file system if not already existing.

It will install gocryptfs from github, with the version based on `gocryptfs_version`. For now its not set as a default, but you could use 2.5.2.

Before installing it will check if `/usr/bin/gocryptfs` already exist. If it does it will not try to install anything. So should you want to upgrade then remove `/usr/bin/gocryptfs`.