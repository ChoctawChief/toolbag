#!/bin/bash
#adds persistence.sh to crontab
sudo echo @restart sh ~/toolbag/persostence/persistence.sh >> /etc/crontab
