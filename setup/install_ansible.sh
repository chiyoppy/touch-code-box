#!/bin/bash -x

sudo apt-get update
sudo apt-get install -y python-dev python-pip
sudo pip install ansible
ssh -T localhost echo Hello world!
