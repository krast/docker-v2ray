# docker-v2ray

提供一个docker化的v2ray服务

## docker run

```bash
docker run --name v2ray \
  -d \
  -p1081:1081 \
  -p8001:8001 \
  -v $(pwd)/config.json:/opt/v2ray/config.json:rw \
  krast0/v2ray:1.0
```
