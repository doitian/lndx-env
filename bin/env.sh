#!/usr/bin/env bash

alias bitcoind="command bitcoind -conf='$(pwd)/bitcoind/bitcoin.conf' -datadir='$(pwd)/bitcoind'"
alias bitcoin-cli="command bitcoin-cli -conf='$(pwd)/bitcoind/bitcoin.conf'"

alias blnd="lnd --lnddir='$(pwd)/bob'"
alias blncli="lncli -n regtest --lnddir='$(pwd)/bob' --rpcserver localhost:10009"

alias clnd="lnd --lnddir='$(pwd)/charlie'"
alias clncli="lncli -n regtest --lnddir='$(pwd)/charlie' --rpcserver localhost:11009"

alias ilnd="lnd --lnddir='$(pwd)/ingrid'"
alias ilncli="lncli -n regtest --lnddir='$(pwd)/ingrid' --rpcserver localhost:12009"
