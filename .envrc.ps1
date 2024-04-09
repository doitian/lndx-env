$script:rememberPath = $env:PATH
$script:devDir = if ( $env:DEV_DIR ) { $env:DEV_DIR } else { "C:\Dev" }
$env:PATH += "$devDir\Bitcoin\daemon;$devDir\lnd-windows-amd64;"

function global:start-daemons {
  wt -w 0 `
     nt --title bitcoind "$script:devDir\Bitcoin\daemon\bitcoind.exe" -conf="$PSScriptRoot\bitcoind\bitcoin.conf" -datadir="$PSScriptRoot\bitcoind" `; `
     sp --title lnd      "$script:devDir\lnd-windows-amd64\lnd.exe" --lnddir="$PSScriptRoot\ingrid" --wallet-unlock-password-file="$PSScriptRoot\password-dev.txt"
}

function global:bitcoin-cli {
  bitcoin-cli.exe -conf="$PSScriptRoot\bitcoind\bitcoin.conf" @Args
}

function global:ilncli {
  lncli.exe -n regtest --lnddir="$PSScriptRoot\ingrid" --rpcserver "localhost:12009" @Args
}

function global:down {
  $env:PATH = $script:rememberPath
  Remove-Item Function:start-daemons
  Remove-Item Function:bitcoin-cli
  Remove-Item Function:ilncli
}
