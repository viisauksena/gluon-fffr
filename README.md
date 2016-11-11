FFFr specifics
===============

here is all fffr specific stuff - so all other gluon repos by me could be cleaned up 

emergency.sh
============
this repository also includes an emergency script which checks for a working batman-adv
gateway connection. If no Gateway connection exists some countermeasures are started:

 - 3 min offline - call `wifi`
 - 5 min offline - restart fastd
 - 7 min offline - restart networking

If no countermeasure works bringing the node online again, the router will be enforced
to reboot after 10 minutes.

*Note: this script may cause a problem for users, that use the node on purposes intended
to work without functioning gateway connectivity, for example as a switch (disable
the cronjob there).*

Implement this package in your firmware
=======================================
Create a file "modules" similar to the following content in your
<a href="https://github.com/ffac/site/tree/offline-ssid"> site directory:</a>

GLUON_SITE_FEEDS="ssidchanger"<br>
PACKAGES_SSIDCHANGER_REPO=https://github.com/viisauksena/gluon-ssid-changer.git<br>
PACKAGES_SSIDCHANGER_COMMIT=f135ba05913feb4451e4cf067b735b095a4ee243<br>
PACKAGES_SSIDCHANGER_BRANCH=chaos-calmer<br>

With this done you can add the package gluon-ssid-changer to your site.mk
