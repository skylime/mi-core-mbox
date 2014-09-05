mi-core-mbox
============

Please refer to https://github.com/joyent/mibe for use of this repo.

## description

Create zone with dovecot as imap and pop service, monitored via munin-node.

## mdata variables

- `api_redis_addr`: ip or hostname of api server, ip addresses requires squared brackets (required)
- `api_redis_key`: base64 encoded spipe key for api server (required)
- `mbox_lmtp_key`: base64 encoded spipe key for lmtp (required)
- `mbox_ssl`: ssl cert, key and CA for imaps and pop3s in pem format

## services

- `993/tcp`: imaps
- `995/tcp`: pop3s
- `2424/tcp`: spipe encrypted lmtp
