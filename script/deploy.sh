#!/bin/sh
ssh -q -t goutham.vangala@10.210.78.24 <<EOF
cd ~/hello-jenkins-
git pull
npm install --production
sudo forever restartall
exit
EOF
