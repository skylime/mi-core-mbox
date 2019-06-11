#!/bin/bash
# Configure spiped for redis and lmtp connection

/opt/core/bin/spiped-configure-smf api-redis encrypt [127.0.0.1]:63790 $(mdata-get api_redis_addr):63790 $(mdata-get api_redis_key)
/opt/core/bin/spiped-configure-smf mbox-lmtp decrypt [::]:2424         [::1]:24                          $(mdata-get mbox_lmtp_key)
