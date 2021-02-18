#!/bin/bash

LOG_PATH="/home/ubuntu/logs/regen"
LOG_FILE=$LOG_PATH/regen-utils.log

exec &> >(tee -a "$LOG_FILE")

echo [$(date -u)]
echo ... Installing Regen Log Rotation and Crontab
sudo cp /home/ubuntu/code/regen-utils/regen.logrotate /etc/logrotate.d/regen
sudo bash -c "echo '* * * * * * ubuntu sudo logrotate -f /etc/logrotate.d/regen' > /etc/cron.d/regen"

echo "> ls -la /etc/crond.d | grep regen"
ls /etc/cron.d/ | grep regen

echo "> ls -la /etc/logrotate.d | grep regen"
ls /etc/logrotate.d/ | grep regen

echo Log rotation will run every minute
echo Done.
