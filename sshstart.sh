#! /bin/bash
#stop option -s
if [ "$1" == "-s" ]; then
  sudo systemctl stop ssh.service 2>/dev/null
  sudo /etc/init.d/ssh stop 2>/dev/null
  sudo systemctl status ssh.service 2>/dev/null
  sudo /etc/init.d/ssh status > /dev/null 2>&1
  echo "ssh service stopped"
  exit

# check for either init.d or systemctl and intate ssh service
elif ! systemctl 2>/dev/null; then
  echo "systemctl nonfuctioning utlizing init dameon"
 else
   echo "systemctl fuctioning"
   sudo systemctl start ssh.service 1>/dev/null
   sudo systemctl status ssh.service
fi
if ! sudo /etc/init.d/ssh status 1>/dev/null -or ! sudo systemctl status ssh.service 2>/dev/null; then
 echo "ssh dameon is already running"
else
 sudo /etc/init.d/ssh start
 sudo /etc/init.d/ssh status
fi

echo $0 "-s to stop ssh service"
