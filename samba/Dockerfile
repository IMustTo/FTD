# Pull base image
FROM pkg

# Install samba
RUN apt-get install -y samba

RUN echo "[doc]\
\npath = /home\
\navailable = yes\
\nvalid users = root\
\nread only = no\
\nbrowsable = yes\
\npublic = yes\
\nwritable = yes" >> /etc/samba/smb.conf
