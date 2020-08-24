#!/bin/bash

aws s3 cp s3://inoue-artifacts/hello-server.tgz ./
tar zxvf hello-server.tgz
mv hello-server /usr/local/bin/
mv hello-server.service /etc/systemd/system/

systemctl daemon-reload
systemctl enable hello-server.service
systemctl start hello-server.service
