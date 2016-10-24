# Pull base image
``` bush
FROM debian
  
MAINTAINER chen xin
```

# update source  

``` bush
RUN echo "deb http://mirrors.aliyun.com/debian/ jessie main non-free contrib\
\ndeb http://mirrors.aliyun.com/debian/ jessie-proposed-updates main non-free contrib\
\ndeb-src http://mirrors.aliyun.com/debian/ jessie main non-free contrib\
\ndeb-src http://mirrors.aliyun.com/debian/ jessie-proposed-updates main non-free contrib"> /etc/apt/sources.list  
RUN apt-get update
```

# Install curl
``` bush
RUN apt-get -y install curl  

RUN apt-get install -y npm

RUN npm i -g n --registry=http://registry.npm.taobao.org/

RUN n stable
```
