# Pull base image
FROM balenalib/rpi-raspbian:latest

WORKDIR /usr/local/bin/
COPY ser2sock .
COPY start.sh .
RUN chmod 755 /usr/local/bin/ser2sock
RUN chmod 755 /usr/local/bin/start.sh

EXPOSE 10001

# Proper Entrypoint
ENTRYPOINT ["/usr/local/bin/start.sh"]
#ENTRYPOINT ["/usr/local/bin/ser2sock","-p$LISTENER_PORT","-s","$SERIAL_DEVICE","-b","9600"]

# Debugging Entrypoint
# ENTRYPOINT ["bash"]
