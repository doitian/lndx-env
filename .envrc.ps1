$script:rememberPath = $env:PATH
$devDir = if ( $env:DEV_DIR ) { $env:DEV_DIR } else { "C:\Dev" }
$env:PATH += ";$(pwd)\bin;$devDir\Bitcoin\daemon;$devDir\lnd-windows-amd64"

function global:bitcoin-cli {
  bitcoin-cli.exe -conf="$PSScriptRoot\bitcoind\bitcoin.conf" @Args
}

function global:blncli {
  lncli.exe -n regtest --lnddir="$PSScriptRoot\bob" --rpcserver "localhost:10009" @Args
}

function global:ilncli {
  lncli.exe -n regtest --lnddir="$PSScriptRoot\ingrid" --rpcserver "localhost:12009" @Args
}

function global:down {
  $env:PATH = $script:rememberPath
  Remove-Item -Function bitcoin-cli
  Remove-Item -Function blncli
  Remove-Item -Function ilncli
}
