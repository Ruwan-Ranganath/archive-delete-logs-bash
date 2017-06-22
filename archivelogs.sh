#!/bin/bash

NOW=$(date +"%d-%m-%Y")

currentlogpath=/mnt/10.33.221.172/wso2as-5.3.0/logs
archivedlogpath=/mnt/archivedlogs

cd $currentlogpath
sudo touch logarchiving-log.txt
pwd >> logarchiving-log.txt 

bzip2 *2017-06-1*

mv *.bz2 $archivedlogs

find $archivedlogs -mtime 300 -type f -delete >> logarchiving-log.txt
