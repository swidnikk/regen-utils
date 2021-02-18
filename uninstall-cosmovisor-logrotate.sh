#!/bin/bash

LOG_PATH="/home/ubuntu/logs/regen"
LOG_FILE=$LOG_PATH/regen-utils.log

exec &> >(tee -a "$LOG_FILE")

echo [$(date -u)]
echo ... Uninstalling Regen Cosmovisor Log Rotation and Crontab

sudo rm /etc/logrotate.d/cosmovisor
sudo rm /etc/cron.d/cosmovisor

echo Done.
