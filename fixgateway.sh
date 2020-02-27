#!/bin/bash
#
# Ubuntu 18.04 wont always update the default gateway when changed in netplan. So this script fixes this manually.
#
# Usage ./fixgateway.sh [oldgateway] [newgateway] [interface]
#

sleep 20
/sbin/route del -net 0.0.0.0 gw $1 netmask 0.0.0.0 dev $3
/sbin/route add default gw $2 $3
touch /root/check
