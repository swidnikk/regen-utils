#!/bin/bash

LOG_PATH="/home/ubuntu/logs/regen"
LOG_FILE=$LOG_PATH/regen-utils.log

exec &> >(tee -a "$LOG_FILE")

echo [$(date -u)]
echo ... Uninstalling Regen Cosmovisor Log Rotation and Crontab

sudo rm /etc/logrotate.d/cosmovisor
sudo rm /etc/cron.d/cosmovisor

echo "> ls -la /etc/crond.d | grep cosmovisor"
ls /etc/cron.d/ | grep cosmovisor

echo "> ls -la /etc/logrotate.d | grep regen"
ls /etc/logrotate.d/ | grep cosmovisor

echo Done.
