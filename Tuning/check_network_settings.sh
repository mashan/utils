#!/bin/bash

cat << EOF
############################
Check netwrok settings.
############################
EOF
echo "available ports  ..."
cat /proc/sys/net/ipv4/ip_local_port_range | awk '{print($2-$1)}'
echo "current connections ..."
netstat -t | wc -l

echo
echo "TCP timeout ..."
cat /proc/sys/net/ipv4/tcp_fin_timeout


cat << EOF

############################
Check file settings.
############################
EOF
echo "limit of fd  ..."
ulimit -n
