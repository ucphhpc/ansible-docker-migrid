# Install alloy

This will install alloy with configuration as needed by migrid.

You need to specify `alloy_version` to set which version you want to use. Also `alloy_user_gid` and `alloy_user_uid` set to what your lustre setup requires.

[Convert from promtail](https://grafana.com/docs/alloy/latest/set-up/migrate/from-promtail/) to alloy with:

```bash
alloy convert --source-format=promtail --bypass-errors --output alloy.conf promtail-config
``` 

The alloy configuration needs to be placed in `templates` and adjusted with required variables. Has already been done here, so lucky you!