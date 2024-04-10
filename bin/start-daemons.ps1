wt -w 0 `
  nt --title bitcoind -d . pwsh -nol -noe bin\start-bitcoind.ps1 `; `
  sp --title lnd -d . pwsh -nol -noe bin\start-ingrid.ps1
