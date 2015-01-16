#!/bin/bash -x

ansible-playbook -kv -c paramiko -i default site.yml
