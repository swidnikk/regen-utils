#!/bin/bash

LOG_PATH="/home/ubuntu/logs/regen"
LOG_FILE=$LOG_PATH/regen-utils.log

exec &> >(tee -a "$LOG_FILE")

echo [$(date -u)]
echo ... Uninstalling Regen Log Rotation and Crontab

sudo rm /etc/logrotate.d/regen
sudo rm /etc/cron.d/regen

echo Done.
