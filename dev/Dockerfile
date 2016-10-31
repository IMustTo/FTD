# Pull base image
FROM samba

# Startup
ADD startup /opt
RUN chmod a+x /opt/startup

# Port
EXPOSE 137 138 139 445 3000 3123 8000 8080

# Start smb
ENTRYPOINT bash /opt/startup