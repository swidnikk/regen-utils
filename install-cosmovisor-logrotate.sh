#!/bin/bash

LOG_PATH="/home/ubuntu/logs/regen"
LOG_FILE=$LOG_PATH/regen-utils.log

exec &> >(tee -a "$LOG_FILE")

echo [$(date -u)]
echo ... Installing Regen Cosmovisor Log Rotation and Crontab
sudo cp /home/ubuntu/code/regen-utils/cosmovisor.logrotate /etc/logrotate.d/cosmovisor
sudo bash -c "echo '* * * * * * ubuntu sudo logrotate -f /etc/logrotate.d/cosmovisor' > /etc/cron.d/cosmovisor"

echo "> ls -la /etc/crond.d | grep cosmovisor"
ls /etc/cron.d/ | grep cosmovisor

echo "> ls -la /etc/logrotate.d | grep regen"
ls /etc/logrotate.d/ | grep cosmovisor

echo Log rotation will run every minute
echo Done.
