mi-core-mbox
============

Please refer to https://github.com/joyent/mibe for use of this repo.

## mdata variables

- <code>api_redis_addr</code>: ip or hostname of api server (required)
- <code>api_redis_key</code>: base64 encoded spipe key for api server (required)
- <code>mbox_lmtp_key</code>: base64 encoded spipe key for lmtp (required)
- <code>mbox_ssl</code>: ssl cert, key and CA for imaps and pop3s in pem format


## Services

- <code>993/tcp</code>: imaps
- <code>995/tcp</code>: pop3s
- <code>2424/tcp</code>: spipe encrypted lmtp
