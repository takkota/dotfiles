#!/bin/bash
# ansibleを実行するだけ

brew install ansible
ansible-playbook -i localhost, -c local main.yml
