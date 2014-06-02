#!/bin/bash
UUID=$(mdata-get sdc:uuid)
DDS=zones/$UUID/data

if ! zfs list $DDS > /dev/null; then
        # No delegated dataset configured
        exit 0
fi

# remove mailx lock dir
rm -rf /var/mail/\:saved/

zfs set mountpoint=/var/mail/ $DDS
zfs set compression=lz4 $DDS
chown dovecot:dovecot /var/mail/