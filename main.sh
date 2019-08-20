#!/bin/sh

export PATH=/bin:/usr/bin:/usr/local/bin:/sbin:/usr/sbin

if [ ! -e /dev/net/tun ]; then
        echo 'FATAL: cannot start ZeroTier One in container: /dev/net/tun not present.'
        exit 1
fi

zerotier-one & export APP_PID=$!
sleep 5

for ID in $(echo $NETWORK_ID | tr "," "\n")
do
    zerotier-cli join $ID
done

wait $APP_PID
