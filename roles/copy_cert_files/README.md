# copy\_cert\_files

This creates a directory for the migrid certificate (`migrid_certs`) files and optionally copies them from a local source.
Then it creates the MiGrid specific link structure in the directory, which looks like:

```
|-- cacert.pem -> MiG/*.migrid.test/cacert.pem
|-- combined.pem -> MiG/*.migrid.test/combined.pem
|-- combined.pub -> MiG/*.migrid.test/combined.pub
|-- crl.pem -> MiG/*.migrid.test/crl.pem
|-- ext.migrid.test -> MiG/*.migrid.test
|-- io.migrid.test -> MiG/*.migrid.test
|-- MiG
|   `-- *.migrid.test
|       |-- cacert.pem
|       |-- combined.pem
|       |-- combined.pub
|       |-- crl.pem
|       |-- server.ca.pem
|       |-- server.crt
|       `-- server.key
|-- oid.migrid.test -> MiG/*.migrid.test
|-- server.ca.pem -> MiG/*.migrid.test/server.ca.pem
|-- server.crt -> MiG/*.migrid.test/server.crt
|-- server.key -> MiG/*.migrid.test/server.key
|-- sid.migrid.test -> MiG/*.migrid.test
|-- *.migrid.test -> MiG/*.migrid.test
`-- www.migrid.test -> MiG/*.migrid.test
```

where `migrid_copy_cert_files_domain="migrid.test"`

The `migrid_certs` directory can then be mounted into the MiGrid containers.

`migrid_cert_persistant` is default true, will ensure that migrid code will assume that everything in certs directory is handled by ansible.