# Start from the Mosquitto image
FROM eclipse-mosquitto:2.0

# Copy any custom configuration files if needed
COPY . .

# Expose the necessary ports
EXPOSE 9001

# Set the entry point to start Mosquitto
ENTRYPOINT ["/usr/sbin/mosquitto", "-c", "/mosquitto/config/mosquitto.conf"]