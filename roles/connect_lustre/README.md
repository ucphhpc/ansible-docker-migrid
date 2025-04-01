# connect\_lustre

This role aims to connect the deployed migrid application to a configured lustre filesystem.
Therefore it can mount the lustre filesystem and link state directory for migrid to it.
See `defaults/` for variables.

If you are running `install-migrid.yml` on a system from scratch (empty no installation ever), then you might encounter an error when getting to `ucphhpc.docker_migrid.connect_lustre : Mount Lustre directory`. This is because lnet is not setup, reboot server and rerun `install-migrid.yml`
