$script:rememberPath = $env:PATH
$devDir = if ( $env:DEV_DIR ) { $env:DEV_DIR } else { "C:\Dev" }
$env:PATH += ";$(pwd)\bin;$devDir\Bitcoin\daemon;$devDir\lnd-windows-amd64"

function global:down {
  $env:PATH = $script:rememberPath
}
