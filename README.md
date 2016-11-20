# 启动方式

``` bash
docker run -t -i --privileged -p 137-139:137-139/tcp -p 445:445/tcp -p 3000:3000/tcp -p 3123:3123/tcp -p 8000:8000/tcp -p 8080:8080/tcp -d --name dev -v /e/GitSpace/docker/share:/share dev /bin/bash
```

## 访问 \\\\:192.168.99.100

