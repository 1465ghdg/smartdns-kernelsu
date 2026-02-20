#!/system/bin/sh

SKIPUNZIP=1
ASH_STANDALONE=0

smartdns_path=/data/adb/smartdns

ui_print "- unzip"
unzip -o $ZIPFILE -x 'META-INF/*' -d $MODPATH >&2
unzip -o "$MODPATH/bin/ca-certificates.zip" -d $smartdns_path/ssl/certs/ >&2

ui_print "- create work dir"
mkdir -p $smartdns_path/bin $smartdns_path/run $smartdns_path/config
cp $MODPATH/bin/smartdns-aarch64 $smartdns_path/bin/smartdns
if [ ! -f "$smartdns_path/config/smartdns.conf" ]; then
    cp $MODPATH/config/smartdns.conf $smartdns_path/config/smartdns.conf
fi

ui_print "- create work file"
touch $smartdns_path/cache/smartdns.cache
touch $smartdns_path/log/smartdns.log

ui_print "- set file permission"
set_perm_recursive $MODPATH 0 0 0755 0644
set_perm_recursive $smartdns_path 0 0 0755 0644
set_perm $smartdns_path/bin/smartdns 0 0 0755

ui_print "- installed"
