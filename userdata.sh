#!/bin/bash

yum install ansible -y &>>/opt/userdata.log

ansible-pull -i localhost, -U https://github.com/krish596/roboshop-ansible.git main.yml -e component=${component} -e env=${env} &>>/opt/userdata.log
