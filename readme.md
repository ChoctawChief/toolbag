# General Info 
a small collection of tools 
# Setup 
cd ~

git clone https://github.com/ChoctawChief/toolbag

cd toolbag

# Tools 
## Services 
sshstart.sh Starts and stops ssh server using either systemctl or init.d 

usage

cd toolbag/services

./sshstart.sh to start ./sshstart -s to stop

## Enumeration
nmap_pingsweep.sh interactive nmap that saves output of scans to file 
usage

cd toolbag/enum

./nmap_pingsweep.sh

## Persistence
autostartper.sh loads scripts  in to crontab to run at start up default script netcatreverseshell.sh


netcatreverseshell.sh runs 4 instaces of netcat forwarding bash to outbound ports for reverse shell 


usage 

cd toolbag/persis ./autostartper.sh 

usage 

nc -lvnp (port) on local host 

cd toolbag/persistence nano
__change ip and ports to local config, make sure ports are forwarded if working with NAT__

./netcatreverseshell.sh on remote host 

 
