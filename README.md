# lndx-env

## Getting Started

Install [bitcoind](https://bitcoin.org/en/download) and [lnd](https://github.com/lightningnetwork/lnd). Ensure that the executables are in your PATH.

Install honcho

```shell
pip install honcho
```

Start all daemons

```shell
honcho start
```

Setup aliases for the commands

```shell
source bin/env.sh
```

Setup the Bitcoin account

```shell
bitcoin-cli createwallet
```

Use password in the file `password-dev.txt` to create the accounts:

```shell
blncli create
clncli create
ilncli create
```
