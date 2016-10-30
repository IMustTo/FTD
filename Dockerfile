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
RUN apt-get -y install curl

# Install samba
RUN apt-get install -y apt-utils
RUN apt-get install -y samba

RUN echo "[doc]\
\npath = /home\
\navailable = yes\
\nvalid users = root\
\nread only = no\
\nbrowsable = yes\
\npublic = yes\
\nwritable = yes" >> /etc/samba/smb.conf

# Install npm
RUN apt-get install -y npm
RUN npm config set registry "https://registry.npm.taobao.org"

# Install n
RUN npm i -g n

# Install nodejs@stable
RUN n stable

# Port
EXPOSE 137 138 139 445 3000 3123 8000 8080

# Start smb
#ENTRYPOINT (echo 123;echo 123) | smbpasswd -s -a root && service smbd restart && service nmbd restart