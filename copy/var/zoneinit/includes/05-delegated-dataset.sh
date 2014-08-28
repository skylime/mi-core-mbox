#!/bin/bash
UUID=$(mdata-get sdc:uuid)
DDS=zones/$UUID/data

if ! zfs list $DDS > /dev/null; then
        # No delegated dataset configured
        exit 0
fi

zfs set mountpoint=/var/mail/ $DDS
zfs set compression=lz4 $DDS
chown dovecot:dovecot /var/mail/

# znapzend for backup
znapzendzetup create --recursive --tsformat='%Y-%m-%d-%H%M%S' \
	SRC '7day=>1hour,30day=>1day,1year=>1week,10year=>1month' ${DDS}
/usr/sbin/svcadm enable svc:/pkgsrc/znapzend:default
