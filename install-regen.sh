#!/bin/bash

LOG_PATH="/home/ubuntu/logs/regen"
LOG_FILE=$LOG_PATH/regen-utils.log

exec &> >(tee -a "$LOG_FILE")

echo ... Installing Regen Service
sudo cp /home/ubuntu/code/regen-utils/regen.service /lib/systemd/system/regen.service
sudo chmod 644 /lib/systemd/system/regen.service
sudo systemctl daemon-reload
sudo systemctl enable regen.service

echo Regen Service installed. To start run "sudo systemctl start regen.service"
