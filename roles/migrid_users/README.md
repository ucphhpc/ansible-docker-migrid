# migrid\_users

This role configures the unix users on the host system that are necessary for running migrid.

`migrid_adm`: owns `migrid_root`, therefore owns the application code, used for cloning docker-migrid, owns docker-compose.override.yml
`migrid_user`: owns `migrid_state_directory`, owns `migrid_cipher_directory`, owns `migrid_certs`, owns static files in state dir, must align with UID/GID of mig user inside Docker container
