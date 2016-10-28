# Pull base image
FROM debian

MAINTAINER chen xin

# Update source
RUN echo "deb http://mirrors.aliyun.com/debian/ jessie main non-free contrib\
\ndeb http://mirrors.aliyun.com/debian/ jessie-proposed-updates main non-free contrib\
\ndeb-src http://mirrors.aliyun.com/debian/ jessie main non-free contrib\
\ndeb-src http://mirrors.aliyun.com/debian/ jessie-proposed-updates main non-free contrib"> /etc/apt/sources.list

RUN apt-get update

# Install curl
RUN apt-get install -y curl

# Install version managers git && subversion
RUN apt-get install -y git
RUN apt-get install -y subversion

# Install npm
RUN apt-get install -y npm
RUN npm config set registry "https://registry.npm.taobao.org"

# Install n
RUN npm i -g n
