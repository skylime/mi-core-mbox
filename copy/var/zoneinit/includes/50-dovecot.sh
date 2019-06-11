#!/usr/bin/env bash

# Configure dovecot trusted proxies
if mdata-get trusted_proxies 1>/dev/null 2>&1; then
	cat > /opt/local/etc/dovecot/conf.d/core-proxy-trusted.conf <<EOF
login_trusted_networks = $(mdata-get trusted_proxies)
EOF
fi

# If DH exists, place it on the file system
if mdata-get submission_dh 1>/dev/null 2>&1; then
	mdata-get submission_dh > /opt/local/etc/dovecot/ssl/dh.pem

	gsed -i 's|^#ssl_dh.*|ssl_dh =</opt/local/etc/dovecot/ssl/dh.pem|g' \
		/opt/local/etc/dovecot/conf.d/core-ssl.conf
fi

/usr/sbin/svcadm enable svc:/pkgsrc/dovecot:default
