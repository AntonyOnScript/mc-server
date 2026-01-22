FROM itzg/minecraft-server:stable

# Copy custom data and plugins into the image
COPY data /data
COPY plugins /plugins

# Set environment variables
ENV TYPE="PAPER"
ENV EULA="TRUE"
ENV VERSION="1.21.8"
ENV MEMORY="1536M"
ENV MAX_PLAYERS="6"
ENV MOTD="Servidor do Antonyo"
ENV ONLINE_MODE="false"
ENV TZ="America/Sao_Paulo"
ENV ENABLE_AUTOPAUSE="TRUE"
ENV DIFFICULTY="normal"
ENV ICON="https://encrypted-tbn0.gstatic.com/licensed-image?q=tbn:ANd9GcRB9Hno3-hIMrYk3iYCOiSjU1vc511e7cRZ59q5iUHJrJq-E6VCVn9rM1V5-c3A4qG8WYh3pGSBLjdEQhVXfP97lo5vzsmhf9bCSMJmrXslLeD20M37BOVLqrO-Art8NJ9oIrU89DO8OlM&s=19"
ENV OVERRIDE_ICON="true"

# Expose Minecraft port
EXPOSE 25565