#!/bin/bash

# Initialize a mongo data folder
mkdir -p /data/db

# Start mongodb with stdout logging
echo "--> Starting Mongod process..." 
/usr/local/bin/docker-entrypoint.sh mongod &
COUNTER=0
while [[ $? -ne 0 && $COUNTER -lt 60 ]] ; do
    sleep 2
    let COUNTER+=2
    echo "--> Waiting for mongo to initialize... ($COUNTER seconds so far)" 
    mongo "mongodb://127.0.0.1:27017" --eval "{serverStatus: 1}"
done

# Restore from dump
mongorestore /data/quotable.db

# Keep container running
tail -f /dev/null