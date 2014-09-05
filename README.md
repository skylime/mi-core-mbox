# mi-core-mbox

This repository is based on [Joyent mibe](https://github.com/joyent/mibe). Please note this repository should be build with the [mi-core-base](https://github.com/skylime/mi-core-base) mibe image.

## description

Create zone with dovecot as imap and pop service.

This image is part of the following images:

- [mi-core-mailapi](https://github.com/skylime/mi-core-mailapi)
- [mi-core-mx](https://github.com/skylime/mi-core-mx)
- [mi-core-submission](https://github.com/skylime/mi-core-submission)
- [mi-core-mbox](https://github.com/skylime/mi-core-mbox)
- [mi-core-webmail](://github.com/skylime/mi-core-webmail)

## mdata variables

- `api_redis_addr` [*]: ip or hostname of api server, ip addresses requires squared brackets
- `api_redis_key` [*]: base64 encoded spipe key for api server
- `mbox_lmtp_key` [*]: base64 encoded spipe key for lmtp
- `mbox_ssl` [*]: ssl cert, key and CA for imaps and pop3s in pem format

[*] is required to work properly.

## services

- `993/tcp`: imaps
- `995/tcp`: pop3s
- `2424/tcp`: spipe encrypted lmtp
