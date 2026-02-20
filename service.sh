#!/system/bin/sh

smartdns_path=/data/adb/smartdns

$smartdns_path/bin/smartdns -c $smartdns_path/config/smartdns.conf -p $smartdns_path/run/smartdns.pid -R
