$devDir = if ( $env:DEV_DIR ) { $env:DEV_DIR } else { "C:\Dev" }
bitcoind -conf="$(pwd)\bitcoind\bitcoin.conf" -datadir="$(pwd)\bitcoind" @Args
