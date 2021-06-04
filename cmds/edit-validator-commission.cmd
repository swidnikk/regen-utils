#!/bin/bash

regen tx staking edit-validator \
  --chain-id=$REGEN_CHAINID \
  --commission-rate="0.05"
  --gas=auto \
  --fees=0.25uregen \
  --from=$REGEN_GRANT_KEY \
  --log_format="json"


