# Enable plugins as destination name (for example if_net0)
MUNIN_PLUGINS=(
	'cpu'
	'df'
	'dovecot'
	'iostat'
	'load'
	'uptime'
	'users'
	'vmstat'
	'io_busy_ramdisk'
	'io_busy_sd'
	'io_busy_zfs'
	'io_bytes_ramdisk'
	'io_bytes_sd'
	'io_bytes_zfs'
	'io_ops_ramdisk'
	'io_ops_sd'
	'io_ops_zfs'
)

for plugin in "${MUNIN_PLUGINS[@]}"; do
	if [ ! -x ${MUNIN_PLUGIN_SRC}/${plugin} ]; then
		plugin_src=${plugin%_*}_
	else
		plugin_src=${plugin}
	fi
	if [ -x ${MUNIN_PLUGIN_SRC}/${src_plugin} ]; then
		ln -s ${MUNIN_PLUGIN_SRC}/${plugin_src} ${MUNIN_PLUGIN_DST}/${plugin}
	fi
done


# Enable munin service
/usr/sbin/svcadm enable svc:/pkgsrc/munin-node:default
