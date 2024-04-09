wt -w 0 `
  nt --title bitcoind -d . pwsh -noe bin\start-bitcoind.ps1 `; `
  sp --title lnd -d . pwsh -noe bin\start-ingrid.ps1
