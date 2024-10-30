# Start from the Mosquitto image
FROM eclipse-mosquitto:2.0

# Copy any custom configuration files if needed
COPY mosquitto.conf /mosquitto/config/mosquitto.conf
COPY pwfile /mosquitto/config/pwfile

# Expose the necessary ports
EXPOSE 80

# Set the entry point to start Mosquitto
ENTRYPOINT ["/usr/sbin/mosquitto", "-c", "/mosquitto/config/mosquitto.conf"]