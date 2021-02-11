#!/bin/bash

LOG_PATH="/home/$USER/logs/regen"
LOG_FILE=$LOG_PATH/regen-utils.log

mkdir -p $LOG_PATH

exec &> >(tee -a "$LOG_FILE")

echo [$(date -u)]
echo ... Installing Regen Log Rotation and Crontab

echo "/home/$USER/logs/regen/*.log {
    su $USER $USER
    hourly
    create 0644 $USER $USER
    rotate 5
    dateext
    dateformat -%Y%m%d%H-%s
    size=1M
    notifempty
    copytruncate
    postrotate
	echo [$(date -u)] >> /home/$USER/logs/regen/regen-utils.log
	echo "Regen log $1 rotated" >> /home/$USER/logs/regen/regen-utils.log
    endscript
}
" >regen.logrotate


sudo mv regen.logrotate /etc/logrotate.d/regen
sudo bash -c "echo '* * * * * * $USER sudo logrotate -f /etc/logrotate.d/regen' > /etc/cron.d/regen"

echo Log rotation will run every minute.
echo Logs are in /home/$USER/logs/regen.
echo Done.
