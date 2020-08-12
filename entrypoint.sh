#!/bin/bash
# Start the run once job.
echo "Docker container has been started"
# Setup a cron schedule
printf "* */3 * * * /run.sh >> /var/log/cron.log 2>&1\n# This extra line makes it a valid cron" > scheduler.txt

cron -f




