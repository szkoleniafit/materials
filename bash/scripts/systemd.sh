#!/bin/bash
unitPath=/etc/systemd/system/timecounter.service
cp $(pwd)/countTime.sh /usr/local/bin
ln -fs /usr/local/bin/countTime.sh /usr/bin/timeCounter.sh

cat > $unitPath <<- EOM
[Unit]
Description=Time counting script

[Service]
Type=oneshot
ExecStart=/usr/bin/timeCounter.sh start
ExecStop=/usr/bin/timeCounter.sh stop
RemainAfterExit=yes

[Install]
WantedBy=multi-user.target
EOM

systemctl daemon-reload
