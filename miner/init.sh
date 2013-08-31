#!/bin/sh
### BEGIN INIT INFO
# Provides:          MinerD
# Required-Start:    $network $remote_fs $syslog
# Required-Stop:     $network $remote_fs $syslog
# Default-Start:     2 3 4 5
# Default-Stop:      0 1 6
# Short-Description: Start minerd at boot
# Description:       Start minerd
### END INIT INFO
case "$1" in
start)   echo -n "Start services: Miner Daemon"
/opt/cpuminer/minerd -c /etc/minerd.conf > /var/log/minerd.log 2>&1 &
;;
stop)   echo -n "Stop services: Miner Daemon"
/usr/bin/killall minerd
;;
restart)
$0 stop
$0 start
;;
*)   echo "Usage: $0 start|stop|restart"
exit 1
;;
esac
exit 0
