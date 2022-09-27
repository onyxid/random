#!/bin/sh
# this script is meant to fix my ssh issue, it reallows password authentication
# within the sshd config file

if sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/' /etc/ssh/sshd_config ; then
    echo "SUCCESS"
else
    echo "FAIL"
    echo "Are you running as root?"
fi
