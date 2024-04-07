#!/usr/bin/env bash

alias bitcoin-cli="command bitcoin-cli -conf='$(pwd)/bitcoind/bitcoin.conf'"
alias blncli="lncli -n regtest --lnddir='$(pwd)/bob' --rpcserver localhost:10009"
alias clncli="lncli -n regtest --lnddir='$(pwd)/charlie' --rpcserver localhost:11009"
alias ilncli="lncli -n regtest --lnddir='$(pwd)/ingrid' --rpcserver localhost:12009"
