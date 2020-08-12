FROM ubuntu:latest
MAINTAINER docker@ekito.fr

RUN apt-get update && apt-get install -y cron curl

# Add crontab file in the cron directory
ADD crontab /etc/cron.d/hello-cron
ADD run.sh /run.sh

# Give execution rights on the cron job
RUN chmod 0644 /etc/cron.d/hello-cron

# Create the log file to be able to run tail
RUN touch /var/log/cron.log

#Install Cron
RUN apt-get update
RUN apt-get -y install cron

RUN chmod 0744 /run.sh

# Run the command on container startup
CMD cron && tail -f /var/log/cron.log