#!/bin/bash
# chkconfig: 345 99 10
case "$1" in
  start)
    # Executes our script
    sudo sh ~/toolbad/persistence.sh
    ;;
  *)
    ;;
esac
exit 0

