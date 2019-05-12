#!/bin/sh /etc/rc.common

. /lib/functions/network.sh

START=90
STOP=10

start() {
  local INTERFACES
  local INTERFACES_PARAMS
  local REAL_INTERFACE

  INTERFACES=$(uci -P/var/state get mdns-repeater.@main[0].iface)
  INTERFACES_PARAMS=""

  for INTERFACE in $INTERFACES; do
    network_get_device REAL_INTERFACE $INTERFACE
    INTERFACES_PARAMS="$INTERFACES_PARAMS $REAL_INTERFACE"
  done

  /usr/sbin/mdns-repeater $INTERFACES_PARAMS
}

stop() {
  kill `cat /var/run/mdns-repeater.pid`
}
