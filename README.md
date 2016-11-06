# Pull base image
``` bash
FROM debian
  
MAINTAINER chen xin
```

# Update source  

``` bash
RUN echo "deb http://mirrors.aliyun.com/debian/ jessie main non-free contrib\
\ndeb http://mirrors.aliyun.com/debian/ jessie-proposed-updates main non-free contrib\
\ndeb-src http://mirrors.aliyun.com/debian/ jessie main non-free contrib\
\ndeb-src http://mirrors.aliyun.com/debian/ jessie-proposed-updates main non-free contrib"> /etc/apt/sources.list  
RUN apt-get update
```

# Install curl
``` bash
RUN apt-get -y install curl  

# Install npm & node
RUN apt-get install -y npm
```
``` bash
RUN npm i -g n --registry=http://registry.npm.taobao.org/

RUN n stable
```
