#!/bin/bash

GOV_PROP="${GOV_PROP-0}"
DEPOSIT="${DEPOSIT-200000000uregen}"
CHAIN="${CHAIN-regen1}"
FROM="${FROM-regen1y4rzzrgl66eyhzt6gse2k7ej3zgwmnger7pa24}"
FEES="${FEES-1000uregen}"

regen tx gov deposit $GOV_PROP_NUMBER $DEPOSIT --chain-id=$CHAIN --from $FROM --gas=auto --fees=$FEES
