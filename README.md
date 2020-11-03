# openwrt_autoupdate
OpenWrt Auto Update script

This project aims to have a simple script that will automatically update the packages on a OpenWrt/LEDE router.
The code is derived from Christopher Smart's blog post (https://blog.christophersmart.com/2018/03/18/auto-apply-latest-package-updates-on-openwrt-lede-project/)

## Requirements
You need to have **ssh** access to your OpenWrt router and the **git** package installed. 
You could technically create and setup these scripts through Luci but I chose to do it this way.

### NOTE
You may run into a fatal error message if you try to do git clone with the https protocol inside OpenWrt.
For me, the quickest way was to clone it with **git** protocol instead of **https**.
```
git clone git://github.com/nick-delgado/openwrt_autoupdate.git
```

## SETUP

The first thing to do after cloning the repo from within the router is to make the setup script executable:

```
cd openwrt_autoupdate/
chmod u+x init_setup.sh
```

Then run it
```
./init_setup.sh
```

