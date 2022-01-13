#!/bin/bash
set -e

if ! grep -q '/sbin/reboot' /etc/crontab; then
    echo "0 9 * * * root /sbin/reboot" >> /etc/crontab 
    echo "0 18 * * * root /sbin/reboot" >> /etc/crontab 
fi
