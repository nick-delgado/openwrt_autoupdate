#!/bin/ash
opkg update
# upgrade netifd first as it causes drop out and system upgrade fails
opkg upgrade netifd
# install luci-ssl, so we get web back after upgrades
opkg install luci-ssl
/etc/init.d/uhttpd restart
# do package upgrades
PACKAGES="$(opkg list-upgradable |awk '{print $1}')"
if [ -n "${PACKAGES}" ]; then
  opkg upgrade ${PACKAGES}
  if [ "$?" -eq 0 ]; then
    echo "$(date -I"seconds") - update success, rebooting" \
>> /www/update.result
    exec reboot
  else
    echo "$(date -I"seconds") - update failed" >> /www/update.result
  fi
else
  echo "$(date -I"seconds") - nothing to update" >> /www/update.result
fi
