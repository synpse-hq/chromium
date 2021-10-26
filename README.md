# docker-chromium
This is a Google Chromium container for IoT

## Build

```
git clone https://github.com/mjudeikis/docker-chromium
cd docker-chromium
make image
```

### Run :
```
docker run --privileged -e DISPLAY=unix:0 -v /run/user/1000:/run/user/0  quay.io/mangirdas/chromium --app https://synpse.net
```


### Debug:



Reset builder (https://github.com/docker/buildx/issues/495):
```
docker run --rm --privileged multiarch/qemu-user-static --reset -p yes
```