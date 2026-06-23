# Migrid migrid\_logstash\_gdp

This role installs logstash onto a SiF server.

It will select SiF if you have defined it as a group_name in inventory.yml. Ansible code uses ```migrid_base_type``` variable to determine this.

Example:
```
all:
  hosts:
    erda.server:
    sif.server:
  children: 
    erda:
      hosts:
        erda.server:
    sif:
      hosts:
        sif.server:
```

This is because the gdp.log only exists on SiF, so avoid logstash also be installed on erda servers.

We are using a general log reader user because of how lustre works.

The format that is genereted in the logstash pipeline migrid-gdp-log.conf will match the same as alloy puts into loki. So you can use the same dashboard in grafana. 

NOTE: this is not anymore dependent on alloy or promtail

see also [defaults/main.yml](./defaults/main.yml)

Dependencies and relations 
------------

* setup\_vars
* start\_logging
* stop\_logging
* community.general version 7.5.0 or greater in requirements.yml