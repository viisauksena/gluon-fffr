#!/usr/bin
batctl o |grep -q ibss0 && touch /tmp/iamnotalone
[ -f /tmp/iamnotalone ] && (batctl o |grep -q ibss0 || ifconfig ibss0 down && ifconfig ibss0 up)
