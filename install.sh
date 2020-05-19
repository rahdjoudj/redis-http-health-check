#!/bin/bash

# Setup Binary
mv redis-http-health-check /usr/bin/redis-http-health-check
# Setup systemd service
cp redis-http-health-check.service /usr/lib/systemd/system/
# Add env variable used by health check
mv .redis-health-check.conf /etc/
# Reload service in systemctl
systemctl daemon-reload
