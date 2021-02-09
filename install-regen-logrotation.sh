#!/bin/bash

LOG_PATH="/home/ubuntu/logs/regen"
LOG_FILE=$LOG_PATH/regen-utils.log

exec &> >(tee -a "$LOG_FILE")

echo [$(date -u)]
echo ... Installing Regen Log Rotation and Crontab
sudo cp /home/ubuntu/code/regen-utils/logrotate-regen.conf /etc/logrotate.d/regen
sudo bash -c "echo '* * * * * * ubuntu sudo logrotate -f /etc/logrotate.d/regen' > /etc/cron.d/regen"

echo Regen Log Rotation installed and will rotate each minute
