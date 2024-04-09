$devDir = if ( $env:DEV_DIR ) { $env:DEV_DIR } else { "C:\Dev" }
lnd --lnddir="$(pwd)\ingrid" --wallet-unlock-password-file="$(pwd)\password-dev.txt" @Args
