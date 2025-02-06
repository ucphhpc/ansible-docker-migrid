# install promtail to scrape migrid

This will install promtail to scrape migrid logs. The version of promtail is `promtail_version`. 

Also this will leave promtail in a stopped, but enabled situation, because its the responsibility of start_logging and stop_logging role to controle states.

The promtail config file is setup for scraping migrid. If you need support for different hardward platforms in the variable `promtail_loki_net`, then the recomendation will be to have a default value in group_vars/all. Then overwrite by having a children property in inventory.yml to overwrite the value of `promtail_loki_net` in a different file. 

An example could be if default is VMWare servers (set in group_vars/all), and you have one physical, then add the server into physical in inventory.yml. Have a file group_vars/physical that contains `promtail_loki_net` with another value.

When bootstrapping, the install-migrid.yml will need promtail to already be installed, so you need to have a baseline playbook which runs this role first.