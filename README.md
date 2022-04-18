# hostapd docker

simple hostapd docker image

## build

```
docker build -t hostapd .
```

## create your hostapd.conf

example

```hostapd.conf
interface=wlan0
bridge=br0
ssid=example-ssid
wpa_passphrase=passphrase-of-example-ssid
```

## run

```sh
docker run --rm -v ${PWD}/hostapd.conf:/hostapd.conf --network host --privileged=true hostapd
```

## docker compose

```yaml
version: '3'
services:
  hostapd:
    build: .
    privileged: true
    network_mode: host
    volumes:
      - ./hostapd.conf:/hostapd.conf
```

