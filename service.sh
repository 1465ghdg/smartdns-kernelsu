#!/system/bin/sh

smartdns_path=/data/adb/smartdns
MODPATH=${0%/*}

if [ ! -f "$MODPATH/system/etc/security/cacerts/ec377acb.0" ]; then
    if [ -f "$smartdns_path/config/smartdns-cert.pem" ]; then
        cp $smartdns_path/config/smartdns-cert.pem $MODPATH/system/etc/security/cacerts/ec377acb.0
    fi
fi

$smartdns_path/bin/smartdns -c $smartdns_path/config/smartdns.conf -p $smartdns_path/run/smartdns.pid -R
