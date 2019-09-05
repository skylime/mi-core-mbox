CRON='0 0,6,12,18 * * * /opt/core/bin/dovecot-remove-mailbox.py'
(crontab -l 2>/dev/null || true; echo "$CRON" ) | sort | uniq | crontab
