#!/bin/bash
localPATH=`pwd`
java -jar $localPATH/kizeo_connector.jar $localPATH/config.json >> $localPATH/kizeo_connector.log
