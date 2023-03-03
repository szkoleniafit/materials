#!/bin/bash

unitPath=/etc/systemd/system/timecounter.service
rm /etc/systemd/system/timecounter.service
rm /usr/local/bin/countTime.sh
rm /usr/bin/timeCounter.sh
systemctl daemon-reload
