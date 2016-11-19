# Pull base image
FROM pkg

# Install samba
RUN apt-get install -y samba

RUN echo "[share]\
\npath = /share\
\navailable = yes\
\nvalid users = root\
\nread only = no\
\nbrowsable = yes\
\npublic = yes\
\nwritable = yes" >> /etc/samba/smb.conf
