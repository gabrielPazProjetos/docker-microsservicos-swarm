#!/bin/bash
apt update
apt install docker.io -y
systemctl start docker
systemctl enable docker
