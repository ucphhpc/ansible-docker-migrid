# Migrid email notifications

This role will setting email notification files that are located under gdp_home. Alle files in ```migrid_copy_email_notifications_dir``` will be copied to gdp_home if the directory exist.

There are several files that can set email notifications.

example of one of the files:

the notifyemails.txt file contains one or several emails that has to be notified when a record number is created. One email on each line, example:

```
SIF notification email <sif-notify@example.com>
SIF other email <sif-notify2@example.com>
```

