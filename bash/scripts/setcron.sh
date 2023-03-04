#!/bin/bash
skrypt=$1
cron=$(echo $2 | sed 's/:/ /g')
cron_path=~/crontab_new

crontab -l > $cron_path
echo "$cron $skrypt" > $cron_path
crontab $cron_path
