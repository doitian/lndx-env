$global:rememberPath = $env:PATH
$global:bitcoinBin = "C:\Dev\Bitcoin\daemon"
$global:lndBin = "C:\Dev\lnd-windows-amd64-v0.17.4-beta"

function global:start-bitcoind {
  & "$bitcoinBin\bitcoind.exe" -conf="$PSScriptRoot\bitcoind\bitcoin.conf" -datadir="$PSScriptRoot\bitcoind"
}
function global:start-ingrid-nopass {
  & "$lndBin\lnd.exe" --lnddir="$PSScriptRoot\ingrid"
}
function global:start-ingrid {
  & "$lndBin\lnd.exe" --lnddir="$PSScriptRoot\ingrid" --wallet-unlock-password-file="$PSScriptRoot\password-dev.txt"
}

function global:bitcoin-cli {
  & "$bitcoinBin\bitcoin-cli.exe" -conf="$PSScriptRoot\bitcoind\bitcoin.conf" @Args
}

function global:ilncli {
  & "$lndBin\lncli.exe" -n regtest --lnddir="$PSScriptRoot\ingrid" --rpcserver "localhost:12009" @Args
}

function global:down {
  deactivate
  $env:PATH = $rememberPath
  Remove-Variable rememberPath -ErrorAction SilentlyContinue
  Remove-Variable bitcoinBin -ErrorAction SilentlyContinue
  Remove-Variable lndBin -ErrorAction SilentlyContinue
  Remove-Item Function:start-bitcoind
  Remove-Item Function:start-ingrid
  Remove-Item Function:start-ingrid-nopass
  Remove-Item Function:bitcoin-cli
  Remove-Item Function:ilncli
}
