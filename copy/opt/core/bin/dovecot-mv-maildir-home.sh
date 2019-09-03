#!/usr/bin/env bash

shopt -s extglob

ls -d /var/mail/*/* | while read mail_home; do
	if [[ ! -d "${mail_home}/maildir" ]]; then
		cd "${mail_home}" && \
			mkdir -p maildir && \
				chown dovecot:dovecot maildir && \
					mv !(.dovecot.lda-dupes|sieve|maildir|\.|\.\.) maildir/
	fi
done
