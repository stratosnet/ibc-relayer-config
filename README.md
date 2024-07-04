# IBC-Relayer config

This is a config for docker-compose set up of hermes relayer

## How to run?

```
docker-compose -f docker-compose.stratos-osmosis.yml up -d
```

## Set up wallets (first time)

1. Generate corresponding mnemonics

```
https://iancoleman.io/bip39/
```

2. Connect to the container

```
docker-compose -f docker-compose.stratos-osmosis.yml exec hermes bash
pushd /tmp
```

3. Store them to files

```
touch keyosmosis.txt
touch keystratos.txt
```

NOTE: Put inside of these files

4. Add them to the keystore

```
popd

hermes --config .hermes/config.toml keys add --chain osmosis-1 --mnemonic-file /tmp/keyosmosis.txt
hermes --config .hermes/config.toml keys add --chain stratos-1 --mnemonic-file /tmp/keystratos.txt

rm -rf /tmp/*
```

5. Refill balance(s) on address(s) (via wallets or cli)

6. Check balance(s)

```
hermes --config .hermes/config.toml keys balance --chain osmosis-1
hermes --config .hermes/config.toml keys balance --chain stratos-1
```
