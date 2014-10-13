/usr/sbin/svcadm enable svc:/pkgsrc/dovecot:default

# configure logadm
logadm -w /var/log/dovecot/main -p 1d -C 10 -N -o dovecot -g dovenull -m 640 -c
logadm -w /var/log/dovecot/info -p 1d -C 10 -N -o dovecot -g dovenull -m 640 -c
logadm -w /var/log/dovecot/debug -p 1d -C 10 -N -o dovecot -g dovenull -m 640 -c
