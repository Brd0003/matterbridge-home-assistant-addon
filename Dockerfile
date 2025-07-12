# Base image
FROM node:22-bookworm-slim

# Set working directory
WORKDIR /app

# Globally install Matterbridge
RUN npm install -g matterbridge --omit=dev

# Copy the run script to the container
COPY run.sh /app/run.sh
RUN chmod +x /app/run.sh

# Expose the frontend port (8283)
EXPOSE 8283

# Start the application using the run.sh script
CMD [ "/app/run.sh" ]
