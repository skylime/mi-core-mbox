mi-core-mbox
============

Please refer to https://github.com/joyent/mibe for use of this repo.

## mdata variables

- <code>api_redis_addr</code>: ip or hostname of api server
- <code>api_redis_key</code>: base64 encoded spipe key for api server
- <code>mbox_lmtp_key</code>: base64 encoded spipe key for lmtp
- <code>mbox_ssl_cert</code>: ssl cert for imaps and pop3s in pem format
- <code>mbox_ssl_key</code>: ssl key for imaps and pop3s in pem format


## Services

- <code>993/tcp</code>: imaps
- <code>995/tcp</code>: pop3s
- <code>2424/tcp</code>: spipe encrypted lmtp
