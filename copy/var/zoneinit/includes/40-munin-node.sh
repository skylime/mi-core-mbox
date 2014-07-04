# Add config folder for parsing additional config files
echo "
# Parse extra config files
includedir /opt/local/etc/munin/munin-conf.d" >> /opt/local/etc/munin/munin-node.conf

# Enable munin service
/usr/sbin/svcadm enable svc:/pkgsrc/munin-node:default
