
# Use the latest Ubuntu base image
FROM nginx:latest

# Set the working directory
WORKDIR /root

# Install required packages
RUN apt-get update \
    && apt-get install -y nano net-tools iputils-ping dos2unix openssh-server openssh-client git curl nodejs npm \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Create folder to download data.
RUN mkdir -p /root/api

    # Create logs directory
RUN mkdir -p /root/logs

# Create an empty logs.txt file
RUN touch /root/logs/logs.txt

# Copy start.sh
COPY scripts/start.sh /root/start.sh
RUN chmod +x /root/start.sh

# Set entrypoint
ENTRYPOINT ["/root/start.sh"]

# Configure SSH
EXPOSE 5433
EXPOSE 3009
