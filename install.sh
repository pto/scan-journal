#!/bin/sh

sudo cp scan-journal.service /etc/systemd/system/
sudo cp scan-journal.sh /root
sudo chmod +x /root/scan-journal.sh
sudo systemctl enable /etc/systemd/system/scan-journal.service
sudo systemctl start scan-journal.service

