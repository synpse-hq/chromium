# docker-chromium

Google Chromium container for IoT Kiosk devices. Start minimal headless chromium browser and opens pre-provided URL.

## Build

```
git clone https://github.com/synpse-hq/chromium
cd chromium
make image
```

### Run :
```
docker run -v /dev/tty0:/dev/tty0 --name rpi-kiosk -e URL=http://synpse.net --privileged --rm quay.io/synpse-hq/chromium
```