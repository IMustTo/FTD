# Pull base image
FROM nodejs:latest

# Startup
ADD startup /opt
RUN chmod a+x /opt/startup

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

# Port
EXPOSE 137 138 139 445 3000 3123 8000 8080

# Start smb
ENTRYPOINT ["/opt/startup"]