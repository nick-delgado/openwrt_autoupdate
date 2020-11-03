# openwrt_autoupdate
OpenWrt Auto Update script

This project aims to have a simple script that will automatically update the packages on a OpenWrt/LEDE router.
The code is derived from Christopher Smart's blog post (https://blog.christophersmart.com/2018/03/18/auto-apply-latest-package-updates-on-openwrt-lede-project/)

## Requirements
You need to have **ssh** access to your OpenWrt router and the **git** package installed. 
You could technically create and setup these scripts through Luci but I chose to do it this way

## SETUP

The first thing to do after cloning the repo from within the router is to make the setup script executable:
```
chmod u+x init_setup.sh
```

Then run it
```
./init_setup.sh
```

