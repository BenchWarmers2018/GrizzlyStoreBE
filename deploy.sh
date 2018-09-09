#!/usr/bin/env bash

echo 'Deployment in process'
pwd && cd target
sudo systemctl stop grizzly.service || true
sudo rm /etc/init.d/grizzly || true
sudo ln -s grizzly-store-spring-1.0-SNAPSHOT.jar /etc/init.d/grizzly
sudo systemctl start grizzly.service