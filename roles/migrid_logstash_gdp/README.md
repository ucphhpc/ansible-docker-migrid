# Migrid migrid\_logstash\_gdp

This role installs logstash onto a SiF server.

It will select SiF if you have defined it as a group_name in inventory.yml. 

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

This role depends on the general log reader user that was defined for the promtail_migrid role. It will import_tasks from promtail_migrid. You can select the user name as a variable logstash_user in defaults/main.yml 

We are using a general log reader user because of how lustre works.

The format that is genereted in the logstash pipeline migrid-gdp-log.conf will match the same as promtail puts into loki. So you can use the same dashboard in grafana. 

NOTE: Now promtail_migrid will not anymore stream from gdp.log because this is done in this role (migrid\_logstash\_gdp). It could be made into a variable but will require a change to this code and promtail\_migrid. In role promtail_migrid the template config.yml will ignore gpd.log because of ```((gdp)|(?P<service>\S+?))```

see also [defaults/main.yml](./defaults/main.yml)

Dependencies and relations 
------------

* setup\_vars
* promtail\_migrid
* start\_logging
* stop\_logging
* community.general version 7.5.0 or greater in requirements.yml