# docker-chromium

This is a Google Chromium container for IoT

## Build

```
git clone https://github.com/mjudeikis/chromium
cd chromium
make image
```

### Run :
```
docker run -v /dev/tty0:/dev/tty0 --name rpi-kiosk -e URL=http://synpse.net --privileged --rm quay.io/mangirdas/chromium
```
