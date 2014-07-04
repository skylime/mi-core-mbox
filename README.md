mi-core-mbox
============

Please refer to https://github.com/joyent/mibe for use of this repo.

## description

Create zone with dovecot as imap and pop service, monitored via munin-node.

## mdata variables

- `api_redis_addr`: ip or hostname of api server (required)
- `api_redis_key`: base64 encoded spipe key for api server (required)
- `mbox_lmtp_key`: base64 encoded spipe key for lmtp (required)
- `mbox_ssl`: ssl cert, key and CA for imaps and pop3s in pem format

- `munin_allow`: hosts that are allowed to connect to munin, separated by space
- `munin_deny`: hosts that are explicit not allowed, separated by space

## services

- `993/tcp`: imaps
- `995/tcp`: pop3s
- `2424/tcp`: spipe encrypted lmtp
