#!/system/bin/sh
# By https://github.com/taamarin/box_for_magisk

smartdns_data_dir="/data/adb/smartdns"
rm_data() {
  if [ ! -d "${smartdns_data_dir}" ]; then
    exit 1
  else
    rm -rf "${smartdns_data_dir}"
  fi
}

rm_data