#!/system/bin/sh

SKIPUNZIP=1
ASH_STANDALONE=0

smartdns_path=/data/adb/smartdns

ui_print "- unzip"
unzip -o $ZIPFILE -x 'META-INF/*' -d $MODPATH >&2

ui_print "- create work dir"
cp $MODPATH/bin/smartdns-aarch64 $smartdns_path/bin/smartdns
cp $MODPATH/config/smartdns.conf $smartdns_path/config/smartdns.conf

ui_print "- set file permission"
set_perm_recursive $MODPATH 0 0 0755 0644
set_perm_recursive $smartdns_path 0 0 0755 0644
set_perm $smartdns_path/smartdns 0 0 0755

ui_print "- installed"
