#!/bin/bash
localPATH=`pwd`
echo "Kizeo Connector..."
for ((i=1;i<=10;i++));
do
    echo "Running..."
    flock -n $localPATH/kizeo_connector.lockfile -c $localPATH/kizeo_connector.sh
    echo "Next run in 60 seconds..."
    sleep 60
done
exit 0
