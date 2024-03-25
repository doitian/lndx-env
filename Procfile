bitcoind: bitcoind -conf="$(pwd)/bitcoind/bitcoin.conf" -datadir="$(pwd)/bitcoind"
bob: lnd --lnddir="$(pwd)/bob" --wallet-unlock-password-file="$(pwd)/password-dev.txt"
charlie: lnd --lnddir="$(pwd)/charlie" --wallet-unlock-password-file="$(pwd)/password-dev.txt"
ingrid: lnd --lnddir="$(pwd)/ingrid" --wallet-unlock-password-file="$(pwd)/password-dev.txt"
