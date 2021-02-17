#!/bin/bash

LOG_PATH="/home/ubuntu/logs/regen"
LOG_FILE=$LOG_PATH/regen-utils.log

exec &> >(tee -a "$LOG_FILE")

echo ... Installing Regen Cosmovisor Service
sudo cp /home/ubuntu/code/regen-utils/cosmovisor.service /lib/systemd/system/cosmovisor.service
sudo chmod 644 /lib/systemd/system/cosmovisor.service
sudo systemctl daemon-reload
sudo systemctl enable cosmovisor.service

echo Regen Cosmovisor Service installed. To start run "sudo systemctl start cosmovisor.service"
