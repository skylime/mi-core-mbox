#!/bin/bash
# Configure dovecot trusted proxies

if mdata-get trusted_proxies 1>/dev/null 2>&1; then
	cat > /opt/local/etc/dovecot/conf.d/core-proxy-trusted.conf <<EOF
login_trusted_networks = $(mdata-get trusted_proxies)
EOF
fi
