#!/bin/bash
 read -p "what is your target ?" ip

nmap -sn  "$ip"   -oG ip_sweep
awk '/Host/ {print $2}' ip_sweep >ip_scope
cat ip_scope
read -p "Press one to iniate portscan on enumerated targets  Press two to quit" opt
if [ "$opt" == "1" ]; then
       sudo nmap -O -sV -oG port_scan  -iL ip_scope
fi
