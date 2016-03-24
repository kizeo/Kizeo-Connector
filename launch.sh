#!/bin/bash
localPATH=`pwd`
if ps -ef | grep -v grep | grep kizeo_connector.jar ; then
   exit 0
else
   echo "Launching Kizeo Connector..."
   for ((i=1;i<=10;i++));
   do
      echo "Lancement..."
      java -jar $localPATH/kizeo_connector.jar $localPATH/config.json >> $localPATH/kizeo_connector.log
      echo "Prochain lancement dans une minute..."
      sleep 60
   done
   exit 0
fi
