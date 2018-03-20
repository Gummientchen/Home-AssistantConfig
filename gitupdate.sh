#!/bin/bash

cd /home/homeassistant/.homeassistant
source /srv/homeassistant/homeassistant_venv/bin/activate
hass --script check_config

git add .
git status
echo -n "Enter the Description for the Change: " [Minor Update]
read CHANGE_MSG
git commit -m "${CHANGE_MSG}"
git push origin master

exit
