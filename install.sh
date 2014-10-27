#!/bin/sh

sudo cp scan-journal.service /etc/systemd/system/
sudo cp scan-journal.timer /etc/systemd/system/
sudo cp scan-journal.sh /root
sudo chmod +x /root/scan-journal.sh
sudo systemctl daemon-reload
sudo systemctl enable /etc/systemd/system/scan-journal.service
sudo systemctl enable /etc/systemd/system/scan-journal.timer
sudo systemctl start scan-journal.timer

