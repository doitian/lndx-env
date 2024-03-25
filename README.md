## Getting Started

Install [bitcoind](https://bitcoin.org/en/download) and [lnd](https://github.com/lightningnetwork/lnd). Ensure that the executables are in your PATH.

Install honcho

```
pip install honcho
```

Start all daemons

```
honcho start
```

Setup aliases for the commands

```
source bin/env.sh
```

Setup the Bitcoin account

```
bitcoin-cli createwallet
```

Use password in the file `password-dev.txt` to create the accounts:

```
blncli create
clncli create
ilncli create
```
