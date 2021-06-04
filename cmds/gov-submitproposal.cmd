#!/bin/bash

PROP="${PROP-prop.json}"

regen tx gov submit-proposal param-change prop2a.json --from regen1y4rzzrgl66eyhzt6gse2k7ej3zgwmnger7pa24 --chain-id regen-1 --gas=auto --fees=5500uregen
