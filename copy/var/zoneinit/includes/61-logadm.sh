# Enable logadm rules for email services

logadm -w '/var/log/redis/redis.log'  -A 7d -p 1d -c -N -o redis -g redis -m 640

logadm -w '/var/log/dovecot/main'     -A 7d -p 1d -c -N -o dovecot -g dovecotnull -m 640
logadm -w '/var/log/dovecot/info'     -A 7d -p 1d -c -N -o dovecot -g dovecotnull -m 640
logadm -w '/var/log/dovecot/debug'    -A 7d -p 1d -c -N -o dovecot -g dovecotnull -m 640
