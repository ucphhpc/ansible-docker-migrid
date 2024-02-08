# Migrid Record Number notification

This role will support the record number email notification system.

The file notifyemails.txt will be copied if it exists. This is so that you can enable ```migrid_record_number_email_notification``` for a whole group of servers, but you might not have the file set for every server in manual/au-overlay directory (configured in defaults.)

the notifyemails.txt file contains one or several emails that has to be notified when a record number is created. One email on each line, example:

```
SIF notification email <sif-notify@example.com>
SIF other email <sif-notify2@example.com>
```

