#!/bin/bash

IDENTITY="${IDENTITY-3E277066462D89EE}"
MONIKER="${MONIKER-swidnikk}"
CHAIN="${CHAIN-regen-1}"
FROM="${FROM-regen1y4rzzrgl66eyhzt6gse2k7ej3zgwmnger7pa24}"
FEES="${FEES-1000uregen}"

regen tx staking edit-validator \
  --identity="$IDENTITY" \
  --details="Discover Possible" \
  --moniker=$MONIKER \
  --chain-id=$CHAIN \
  --gas=auto \
  --fees=$FEES \
  --from=$FROM \
  --log_format="json"

