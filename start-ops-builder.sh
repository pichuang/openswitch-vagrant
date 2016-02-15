#!/bin/bash
NEW_HOSTNAME="$1"

echo
echo "Create instance: ops-builder"

echo
echo "Vagrant up (no provision)"
vagrant up --no-provision --provider=virtualbox

NEW_IP=$(vagrant ssh-config | grep HostName | awk '{print $2}')
echo
echo "New IP Address:" $NEW_IP
#sed -in "s/1.1.1.1/$NEW_IP/g" ./provisioning/hosts

echo
echo "Vagrant provision"
#vagrant provision

echo
echo "Vagrant SSH"
vagrant ssh
echo
