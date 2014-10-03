#!/bin/bash
# Configure dovecot ssl certificates

mdata-get mbox_ssl > /opt/local/etc/dovecot/ssl/dovecot.pem
chmod 400 /opt/local/etc/dovecot/ssl/dovecot.pem

if mdata-get mbox_ssl 1>/dev/null 2>&1; then
	cat > /opt/local/etc/dovecot/conf.d/core-ssl.conf <<EOF
ssl = yes
disable_plaintext_auth = yes
ssl_cert = </opt/local/etc/dovecot/ssl/dovecot.pem
ssl_key = </opt/local/etc/dovecot/ssl/dovecot.pem
EOF
fi

if mdata-get trusted_proxies 1>/dev/null 2>&1; then
	cat > /opt/local/etc/dovecot/conf.d/core-proxy-trusted.conf <<EOF
login_trusted_networks = $(mdata-get trusted_proxies)
EOF

fi
