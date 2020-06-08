# Filename: Dockerfile 
FROM ubuntu:latest


# Install cron
RUN apt-get update && apt-get install -y cron curl
# Add files
ADD run.sh /run.sh
ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /run.sh /entrypoint.sh
ENTRYPOINT /entrypoint.sh