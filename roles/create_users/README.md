# Migrid create\_users

This roles creates static users inside a MiGrid installation.

It works by calling the usercreate.py inside a running migrid container similar to the way the docker-entry.sh does.
Eg. `createuser.py [OPTIONS] [FULL_NAME ORGANIZATION STATE COUNTRY EMAIL COMMENT PASSWORD]`

# Role Variables

```
migrid_create_users:
 - options: -r # (this is the default, overwrite the user information)
   full_name: Foo Bar
   organization: Org42
   state: Baz
   country: NL
   email: foo.bar@example.com
   comment: "created by Ansible" # (this is the default)
   password: "secret"

see also [defaults/main.yml](./defaults/main.yml)

If you don't want the user to be overwritten you have to set `options: ""`.

Dependencies
------------

* migrid\_baseline
* start\_containers
