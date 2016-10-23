# Pull base image  
FROM debian
  
MAINTAINER chen xin  
  
# update source  

RUN echo "deb http://mirrors.aliyun.com/debian/ jessie main non-free contrib\
\ndeb http://mirrors.aliyun.com/debian/ jessie-proposed-updates main non-free contrib\
\ndeb-src http://mirrors.aliyun.com/debian/ jessie main non-free contrib\
\ndeb-src http://mirrors.aliyun.com/debian/ jessie-proposed-updates main non-free contrib"> /etc/apt/sources.list  
RUN apt-get update  

RUN apt-get install npm

RUN apt-get update

RUN npm i n --registry=http://registry.npm.taobao.org/

RUN n stable
