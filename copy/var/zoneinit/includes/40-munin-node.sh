# Enable plugins
MUNIN_PLUGINS=(
	'cpu'
	'df'
	'dovecot'
	'iostat'
	'load'
	'uptime'
	'users'
	'vmstat'
)

for plugins in "${MUNIN_PLUGINS[@]}"; do 
	ln -s /opt/local/lib/munin/plugins/${plugin} /opt/local/etc/munin/plugins/${plugin}
done

# Enable munin service
/usr/sbin/svcadm enable svc:/pkgsrc/munin-node:default
