#!/bin/ash

# create the directory to hold the script
mkdir -p /usr/local/sbin
# copy from git directory to script location 
cp update-system.sh /usr/local/sbin

chmod u+x /usr/local/sbin/update-system.sh
# create the log which will hold the results from the update calls
touch /www/update.result

# make sure the scripts and results are kept when upgrading the firmware
echo "/usr/local/sbin" >> /etc/sysupgrade.conf
echo "/www/update.result" >> /etc/sysupgrade.conf

(crontab -l 2>/dev/null; echo "0 2 * * * /usr/local/sbin/update-system.sh") | crontab -

/etc/init.d/cron start
/etc/init.d/cron enable
